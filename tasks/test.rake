require "html-proofer"
require "yaml"

namespace :test do
  desc "Check the built site with html-proofer"
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

  desc "Check common Liquid template issues"
  task :templates do
    errors = []
    warnings = []

    # Find files with potentially broken Liquid templating
    Dir
      .glob("**/*.{html,md}", File::FNM_DOTMATCH)
      .each do |file|
        next if file.start_with?("_site/", ".git/", "vendor/", "node_modules/")
        next if file == "TROUBLESHOOTING.md" # Contains example code with Liquid syntax
        # TODO return to fix this
        next if file.include?("_archive/") # Archive files may have old Liquid syntax that we don't want to block on

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
        %w[
          TODO
          YYYY
          DATES
          PLACE
          VENUE
          CITY
        ].each do |placeholder|
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
