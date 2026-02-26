require "html-proofer"
require "yaml"

# Helper module for review tasks to avoid polluting global scope
module ReviewHelpers
  def self.fetch_url(url)
    uri = URI.parse(url)

    Net::HTTP.start(
      uri.host,
      uri.port,
      use_ssl: uri.scheme == "https",
      open_timeout: 10,
      read_timeout: 30,
    ) do |http|
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)

      raise "HTTP #{response.code}: #{response.message}" unless response.is_a?(Net::HTTPSuccess)

      response.body
    end
  rescue => e
    raise "Failed to fetch #{url}: #{e.message}"
  end

  def self.normalize_html(content)
    # Remove dynamic content that's expected to differ
    normalized = content.dup

    # Remove timestamps and date strings (various formats)
    normalized.gsub!(/\d{4}-\d{2}-\d{2}[T\s]\d{2}:\d{2}:\d{2}/, "TIMESTAMP")
    normalized.gsub!(/\d{1,2}\/\d{1,2}\/\d{4}/, "DATE")

    # Remove session IDs and tracking codes
    normalized.gsub!(/session[-_]?id["\s:=]+[a-zA-Z0-9]+/i, "SESSION_ID")
    normalized.gsub!(/[?&]utm_[a-z]+=[^&"'\s]+/, "")

    # Remove cache-busting query strings
    normalized.gsub!(/\.(css|js|png|jpg|gif|svg)\?v=[a-zA-Z0-9]+/, '.\1')

    # Normalize whitespace
    normalized.gsub!(/\s+/, " ")
    normalized.strip!

    normalized
  end
end

namespace :review do
  desc "Check external/public URLs in the built site (slower, requires network access)"
  task :external_links do
    # if no _site/, remind user to run bundle exec rake build first
    unless Dir.exist?("./_site")
      abort "❌ No _site/ directory found. Please run 'bundle exec rake build' first."
    end

    # Suppress Ruby warnings from html-proofer dependencies
    original_verbose = $VERBOSE
    $VERBOSE = nil

    begin
      HTMLProofer.check_directory(
        "./_site",
        {
          disable_external: false,
          enforce_https: false,
          ignore_urls: [
            "http://localhost",
            "http://127.0.0.1",
            %r{^https://medium\.com/}, # 403s with Typhoeus but checked manually
            %r{^https://www\.facebookjournalismproject\.com}, # redirected to meta
          ],
          allow_hash_href: true,
          log_level: :info,
          # Add some reasonable defaults for external checking
          typhoeus: {
            followlocation: true,
            maxredirs: 5,
            connecttimeout: 10,
            timeout: 30,
          },
          hydra: {
            max_concurrency: 2, # Be gentle with external sites
          },
          # optional
          # cache: {
          #   timeframe: {
          #     external: "1d", # Cache external link checks for 1 day
          #   },
          # },
        },
      ).run
      puts "✅ External link validation passed!"
    rescue => e
      puts "❌ External link validation failed: #{e.message}"
      raise
    ensure
      $VERBOSE = original_verbose
    end
  end

  desc "Compare staging vs production site content (requires both sites to be deployed)"
  task :compare_deployed_sites do
    require "net/http"
    require "uri"

    # Load deployment config
    unless File.exist?("_config.yml")
      abort "❌ _config.yml not found. Are you in the project root directory?"
    end

    begin
      config = YAML.safe_load_file("_config.yml")
      deployment = config["deployment"] || {}
      staging_bucket = deployment["staging_bucket"]
      prod_bucket = deployment["bucket"]
    rescue => e
      abort "❌ Error loading _config.yml: #{e.message}"
    end

    abort "❌ Staging bucket not configured in _config.yml" unless staging_bucket
    abort "❌ Production bucket not configured in _config.yml" unless prod_bucket

    staging_url = "http://#{staging_bucket}"
    prod_url = "https://#{prod_bucket}"

    staging_url = staging_url.chomp("/")
    prod_url = prod_url.chomp("/")

    puts "🔍 Comparing deployed sites:"
    puts "   Staging:    #{staging_url}"
    puts "   Production: #{prod_url}"
    puts ""

    # Collect paths from built site
    html_files = Dir.glob("_site/**/*.html").map { |f| f.sub("_site", "") }

    # Optionally include additional paths that are not present in local _site
    # (e.g., legacy/archive URLs still live on deployed environments).
    extra_paths = []

    if ENV["EXTRA_PATHS"]
      extra_paths.concat(ENV["EXTRA_PATHS"].split(",").map(&:strip).reject(&:empty?))
    end

    if ENV["EXTRA_PATHS_FILE"]
      unless File.exist?(ENV["EXTRA_PATHS_FILE"])
        abort "❌ EXTRA_PATHS_FILE not found: #{ENV["EXTRA_PATHS_FILE"]}"
      end

      file_paths =
        File
          .readlines(ENV["EXTRA_PATHS_FILE"])
          .map(&:strip)
          .reject { |line| line.empty? || line.start_with?("#") }
      extra_paths.concat(file_paths)
    end

    unless extra_paths.empty?
      extra_paths.map! { |path| path.start_with?("/") ? path : "/#{path}" }
      html_files = (html_files + extra_paths).uniq
      puts "➕ Added #{extra_paths.size} extra path(s) from EXTRA_PATHS/EXTRA_PATHS_FILE"
    end

    if html_files.empty?
      abort "❌ No HTML files found in _site/. Please run 'bundle exec rake build' first."
    end

    puts "📄 Found #{html_files.size} pages to compare"
    puts ""

    differences = []
    errors = []
    checked = 0

    html_files.each do |path|
      checked += 1
      print "\rChecking #{checked}/#{html_files.size}..." if checked % 10 == 0

      staging_full_url = "#{staging_url}#{path}"
      prod_full_url = "#{prod_url}#{path}"

      begin
        staging_content = ReviewHelpers.fetch_url(staging_full_url)
        prod_content = ReviewHelpers.fetch_url(prod_full_url)

        # Normalize content for comparison (remove timestamps, session IDs, etc.)
        staging_normalized = ReviewHelpers.normalize_html(staging_content)
        prod_normalized = ReviewHelpers.normalize_html(prod_content)

        if staging_normalized != prod_normalized
          # Calculate similarity
          staging_size = staging_normalized.length
          prod_size = prod_normalized.length
          size_diff_pct =
            ((staging_size - prod_size).abs.to_f / [staging_size, prod_size].max * 100).round(1)

          differences << {
            path: path,
            staging_size: staging_size,
            prod_size: prod_size,
            size_diff_pct: size_diff_pct,
          }
        end
      rescue => e
        errors << "#{path}: #{e.message}"
      end
    end

    puts "\n✓ Checked #{checked} pages"

    # Report results
    if errors.any?
      puts "⚠️  Errors encountered (#{errors.size}):"
      errors.first(10).each { |e| puts "  - #{e}" }
      puts "  ... and #{errors.size - 10} more" if errors.size > 10
    end

    if differences.any?
      puts "\n 📊 Content differences found (#{differences.size} pages):"

      # Show significant differences (>10% size change)
      significant = differences.select { |d| d[:size_diff_pct] > 10 }
      if significant.any?
        puts "⚠️  SIGNIFICANT differences (>10% size change):"
        significant
          .first(20)
          .each do |diff|
            puts "  - #{diff[:path]}"
            puts "    Staging: #{diff[:staging_size]} chars | Production: #{diff[:prod_size]} chars | Diff: #{diff[:size_diff_pct]}%"
          end
        puts "  ... and #{significant.size - 20} more" if significant.size > 20
        puts ""
      end

      # Show minor differences
      minor = differences.select { |d| d[:size_diff_pct] <= 10 }
      if minor.any?
        puts "ℹ️  Minor differences (≤10% size change): #{minor.size} pages"
        if minor.size <= 10
          minor.each { |diff| puts "  - #{diff[:path]} (#{diff[:size_diff_pct]}% diff)" }
        end
        puts ""
      end

      puts "\n💡 Review these differences to ensure staging changes are intentional before promoting to production."
    else
      puts "✅ No content differences detected between staging and production!"
    end
  end
end
