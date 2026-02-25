require "html-proofer"
require "yaml"

namespace :test do
  desc "Check the built site with html-proofer (internal links only)"
  task :html_proofer do
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
          disable_external: true,
          enforce_https: true,
          ignore_urls: [%r{^http://(localhost|127\.0\.0\.1)}],
          allow_hash_href: true,
          log_level: :error,
        },
      ).run
    ensure
      $VERBOSE = original_verbose
    end
  end

  desc "Check external/public URLs in the built site (slower, requires network access)"
  task :external_links do
    # if no _site/, remind user to run bundle exec rake build first
    unless Dir.exist?("./_site")
      abort "❌ No _site/ directory found. Please run 'bundle exec rake build' first."
    end

    puts "🔗 Checking external links (this may take a while)..."

    # Suppress Ruby warnings from html-proofer dependencies
    original_verbose = $VERBOSE
    $VERBOSE = nil

    begin
      HTMLProofer.check_directory(
        "./_site",
        {
          disable_external: false,
          enforce_https: true,
          ignore_urls: [%r{^http://(localhost|127\.0\.0\.1)}],
          allow_hash_href: true,
          log_level: :info,
          # Add some reasonable defaults for external checking
          typhoeus: {
            followlocation: true,
            connecttimeout: 10,
            timeout: 30,
          },
          hydra: {
            max_concurrency: 5, # Be gentle with external sites
          },
          cache: {
            timeframe: {
              external: "1d", # Cache external link checks for 1 day
            },
          },
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

  desc "Check common Liquid template issues"
  task :templates do
    errors = []
    warnings = []

    # Find files with potentially broken Liquid templating
    Dir
      .glob("**/*.{html,md}", File::FNM_DOTMATCH)
      .each do |file|
        if file.start_with?(
             "_site/",
             ".git/",
             ".github/",
             ".vscode/",
             "node_modules/",
             "TROUBLE",
             "READ",
           )
          next
        end

        content = File.read(file)
        lines = content.split("\n")

        # Check each line for issues
        lines.each_with_index do |line, idx|
          line_num = idx + 1

          # Check for potentially unescaped {{ }} in href (without proper Liquid quotes)
          # This catches: href="{{variable}}" but NOT href="{{ page.url }}"
          if line =~ /href="\{\{[^}]+\}\}"/ && line !~ /href="\{\{\s*\w+\.\w+.*\}\}"/
            warnings << "#{file}:#{line_num}: Possibly unescaped Liquid in href:\n      #{line.strip}"
          end

          # Check for site.root_url that should be page.root_url (common mistake)
          if line.include?("site.root_url") && !file.include?("_includes/prior_events.html")
            errors << "#{file}:#{line_num}: Using site.root_url (should be page.root_url):\n      #{line.strip}"
          end
        end

        # Check for missing endif/endfor
        if_count = content.scan(/\{%\s*if\s+/).size
        endif_count = content.scan(/\{%\s*endif\s*%\}/).size
        if if_count != endif_count
          errors << "#{file}: Mismatched if/endif (#{if_count} if vs #{endif_count} endif)"
        end

        for_count = content.scan(/\{%\s*for\s+/).size
        endfor_count = content.scan(/\{%\s*endfor\s*%\}/).size
        if for_count != endfor_count
          errors << "#{file}: Mismatched for/endfor (#{for_count} for vs #{endfor_count} endfor)"
        end
      end

    if errors.any?
      puts "❌ Template errors:"
      errors.each { |e| puts "  - #{e}" }
      exit 1
    elsif warnings.any?
      puts "⚠️  Template warnings (may be false positives):"
      warnings.each { |w| puts "  - #{w}" }
      puts "\n💡 Review these to ensure Liquid syntax is correct"
    else
      puts "✅ Templates look good"
    end
  end

  desc "Check page-configuration props (section/permalink/title) in markdown"
  task :page_config do
    errors = []
    warnings = []

    Dir
      .glob("*.md")
      .each do |file|
        next if /^[A-Z]+\.md$/.match?(file)
        next if file == "AWS_authentication.md" || file == "SITE_README.md"

        content = File.read(file)
        if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
          fm = YAML.safe_load($1)
          warnings << "#{file}: Missing 'section' field" unless fm["section"]
          warnings << "#{file}: Missing 'permalink' field" unless fm["permalink"]
          # warnings << "#{file}: Missing 'title' field" unless fm['title']
        else
          errors << "#{file}: No page-config args found"
        end
      end

    if errors.any?
      puts "❌ Page-config errors:"
      errors.each { |e| puts "  - #{e}" }
      exit 1
    elsif warnings.any?
      puts "⚠️  Page-config warnings:"
      warnings.each { |w| puts "  - #{w}" }
    else
      puts "✅ Page-config valid"
    end
  end

  desc "Check for placeholder content in built site"
  task :placeholders do
    placeholders = []

    Dir
      .glob("_site/**/*.html")
      .each do |file|
        content = File.read(file)

        # Common placeholders
        %w[TODO YYYY DATES PLACE VENUE CITY].each do |placeholder|
          if content.include?(placeholder)
            # Count occurrences
            count = content.scan(/#{Regexp.escape(placeholder)}/).size
            placeholders << "#{file}: Contains '#{placeholder}' (#{count}x)"
          end
        end
      end

    if placeholders.any?
      puts "⚠️  Found placeholder content:"
      placeholders.uniq.each { |p| puts "  - #{p}" }
    else
      puts "✅ No placeholder content found"
    end
  end

  desc "test for common accessibility issues"
  task :a11y do
    issues = []

    Dir
      .glob("_site/**/*.html")
      .each do |file|
        content = File.read(file)

        # test images have alt text
        content
          .scan(/<img[^>]+>/)
          .each do |img|
            unless img.include?("alt=")
              issues << "#{file}: Image without alt attribute: #{img[0..50]}..."
            end
          end

        # test for empty headings
        if %r{<h[1-6][^>]*>\s*</h[1-6]>}.match?(content)
          issues << "#{file}: Empty heading tag found"
        end

        # test lang attribute exists
        unless /<html[^>]+lang=/.match?(content)
          issues << "#{file}: Missing lang attribute on <html>"
        end

        # test for form inputs without labels
        content
          .scan(/<input[^>]+>/)
          .each do |input|
            next if input.include?('type="hidden"')
            unless input.include?("aria-label=") || input.include?("id=")
              issues << "#{file}: Input without label or aria-label: #{input[0..50]}..."
            end
          end
      end

    if issues.any?
      puts "⚠️  Accessibility issues (#{issues.size}):"
      issues.first(15).each { |i| puts "  - #{i}" }
      puts "  ... and #{issues.size - 15} more" if issues.size > 15
    else
      puts "✅ Basic accessibility tests passed"
    end
  end

  desc "test for performance issues"
  task :performance do
    warnings = []

    Dir
      .glob("_site/**/*.html")
      .each do |file|
        size = File.size(file)
        warnings << "#{file}: Large HTML file (#{size / 1024}KB)" if size > 200_000

        content = File.read(file)

        # test for excessive inline styles
        inline_styles = content.scan(/<[^>]+style=/).size
        if inline_styles > 10
          warnings << "#{file}: #{inline_styles} inline style attributes (consider external CSS)"
        end

        # test for large base64 images
        if content.include?("data:image")
          warnings << "#{file}: Contains base64-encoded image data (hurts performance)"
        end
      end

    # test CSS file sizes
    Dir
      .glob("_site/**/*.css")
      .each do |file|
        size = File.size(file)
        warnings << "#{file}: Large CSS file (#{size / 1024}KB)" if size > 100_000
      end

    if warnings.any?
      puts "⚠️  Performance warnings:"
      warnings.each { |w| puts "  - #{w}" }
    else
      puts "✅ Performance tests passed"
    end
  end

  desc "Validate per-Session page structure"
  task :sessions do
    errors = []
    warnings = []

    # Implement session-specific tests here
    # e.g., check for required frontmatter fields, URL structure, etc.
    # (Left as an exercise for future implementation)
    puts "✅ Session page structure tests not yet implemented."

    if errors.any?
      puts "❌ Session page structure errors:"
      errors.each { |e| puts "  - #{e}" }
      exit 1
    elsif warnings.any?
      puts "⚠️  Session page structure warnings:"
      warnings.each { |w| puts "  - #{w}" }
    else
      puts "✅ Session page structure tests passed"
    end
  end

  desc "Compare staging vs production site content (requires both sites to be deployed)"
  task :compare_deployed_sites do
    require "net/http"
    require "uri"
    require "digest"

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

    staging_url = "https://#{staging_bucket}"
    prod_url = "https://#{prod_bucket}"

    puts "🔍 Comparing deployed sites:"
    puts "   Staging:    #{staging_url}"
    puts "   Production: #{prod_url}"
    puts ""

    # Collect paths from built site
    html_files = Dir.glob("_site/**/*.html").map { |f| f.sub("_site", "") }
    
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
        staging_content = fetch_url(staging_full_url)
        prod_content = fetch_url(prod_full_url)

        # Normalize content for comparison (remove timestamps, session IDs, etc.)
        staging_normalized = normalize_html(staging_content)
        prod_normalized = normalize_html(prod_content)

        if staging_normalized != prod_normalized
          # Calculate similarity
          staging_size = staging_normalized.length
          prod_size = prod_normalized.length
          size_diff_pct = ((staging_size - prod_size).abs.to_f / [staging_size, prod_size].max * 100).round(1)

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

    puts "\r✓ Checked #{checked} pages"
    puts ""

    # Report results
    if errors.any?
      puts "⚠️  Errors encountered (#{errors.size}):"
      errors.first(10).each { |e| puts "  - #{e}" }
      puts "  ... and #{errors.size - 10} more" if errors.size > 10
      puts ""
    end

    if differences.any?
      puts "📊 Content differences found (#{differences.size} pages):"
      puts ""
      
      # Show significant differences (>10% size change)
      significant = differences.select { |d| d[:size_diff_pct] > 10 }
      if significant.any?
        puts "⚠️  SIGNIFICANT differences (>10% size change):"
        significant.first(20).each do |diff|
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
          minor.each do |diff|
            puts "  - #{diff[:path]} (#{diff[:size_diff_pct]}% diff)"
          end
        end
        puts ""
      end

      puts "💡 Review these differences to ensure staging changes are intentional before promoting to production."
    else
      puts "✅ No content differences detected between staging and production!"
    end
  end
end

# Helper methods for site comparison
def fetch_url(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  
  unless response.is_a?(Net::HTTPSuccess)
    raise "HTTP #{response.code}: #{response.message}"
  end
  
  response.body
rescue => e
  raise "Failed to fetch #{url}: #{e.message}"
end

def normalize_html(content)
  # Remove dynamic content that's expected to differ
  normalized = content.dup
  
  # Remove timestamps and date strings (various formats)
  normalized.gsub!(/\d{4}-\d{2}-\d{2}[T\s]\d{2}:\d{2}:\d{2}/, "TIMESTAMP")
  normalized.gsub!(/\d{1,2}\/\d{1,2}\/\d{4}/, "DATE")
  
  # Remove session IDs and tracking codes
  normalized.gsub!(/session[-_]?id["\s:=]+[a-zA-Z0-9]+/i, "SESSION_ID")
  normalized.gsub!(/[?&]utm_[a-z]+=[^&"'\s]+/, "")
  
  # Remove cache-busting query strings
  normalized.gsub!(/\.(css|js|png|jpg|gif|svg)\?v=[a-zA-Z0-9]+/, "\\1")
  
  # Normalize whitespace
  normalized.gsub!(/\s+/, " ")
  normalized.strip!
  
  normalized
end

# Make `rake test` run all tests
desc "Run all tests"
task test: [
       "test:html_proofer",
       "test:templates",
       "test:page_config",
       "test:placeholders",
       "test:a11y",
       "test:performance",
       # 'test:layouts'
     ] do
  puts "\n" + "=" * 60
  puts "✅ All validation tests passed!"
  puts "=" * 60
end
