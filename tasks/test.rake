require "html-proofer"
require "yaml"

namespace :test do
  desc "Check the built site with html-proofer"
  task :html_proofer do
    puts "Testing site with html-proofer..."

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
          enforce_https: false,
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
    puts "testing templates..."
    errors = []
    warnings = []

    # Find files with potentially broken Liquid templating
    Dir
      .glob("**/*.{html,md}", File::FNM_DOTMATCH)
      .each do |file|
        next if file.start_with?("_site/", ".git/", "vendor/", "node_modules/")
        next if file == "TROUBLESHOOTING.md" # Contains example code with Liquid syntax

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
    puts "testing page-configuration properties..."
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
    puts "testing for placeholder content..."

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
          PLS
          Nerd\ Church
          April\ 1
          April\ 15
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
    puts "testing accessibility..."
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
    puts "testing performance..."
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

  # desc "Validate layout configuration and files"
  # task :layouts do
  #     require 'yaml'

  #     puts "Testing layout configuration..."
  #     errors = []
  #     warnings = []

  #     config = YAML.safe_load_file('_config.yml')

  #     # Get all layout references from config
  #     layout_refs = []
  #     config['defaults'].each do |default|
  #         if default['values'] && default['values']['layout']
  #             layout_refs << default['values']['layout']
  #         end
  #     end

  #     # Check that layout files exist
  #     layout_refs.uniq.each do |layout|
  #         layout_file = "_layouts/#{layout}.html"
  #         unless File.exist?(layout_file)
  #             errors << "Layout '#{layout}' referenced in _config.yml but #{layout_file} does not exist"
  #         end
  #     end

  #     # Check all layout files are valid
  #     Dir.glob('_layouts/*.html').each do |layout_file|
  #         layout_name = File.basename(layout_file, '.html')
  #         content = File.read(layout_file)

  #         # Check for {{ content }} which is required in Jekyll layouts
  #         unless content.include?('{{ content }}')
  #             errors << "#{layout_file}: Missing required {{ content }} tag"
  #         end

  #         # Warn if layout is defined but not used in config
  #         unless layout_refs.include?(layout_name)
  #             warnings << "#{layout_file}: Layout exists but not referenced in _config.yml defaults"
  #         end

  #         # Check for basic structural elements
  #         unless content.include?('<!DOCTYPE') || content.include?('doctype')
  #             warnings << "#{layout_file}: Missing DOCTYPE declaration"
  #         end
  #     end

  #     # Test that both layout pathways work in built site
  #     if Dir.exist?('_site')
  #         layouts_found = {}

  #         Dir.glob('_site/**/*.html').each do |file|
  #             content = File.read(file)

  #             # Try to infer which layout was used based on structure
  #             # This is a heuristic check
  #             if content.include?('class="hub"')
  #                 layouts_found['simple_layout'] = true
  #             elsif content.include?('header-image')
  #                 layouts_found['layout_with_header_image'] = true
  #             end
  #         end

  #         # Check that we have examples of pages using each layout
  #         layout_refs.uniq.each do |layout|
  #             unless layouts_found[layout]
  #                 warnings << "Layout '#{layout}' is configured but no built pages appear to use it"
  #             end
  #         end
  #     end

  #     if errors.any?
  #         puts "❌ Layout errors:"
  #         errors.each { |e| puts "  - #{e}" }
  #         exit 1
  #     elsif warnings.any?
  #         puts "⚠️  Layout warnings:"
  #         warnings.each { |w| puts "  - #{w}" }
  #     else
  #         puts "✅ Layout configuration valid"
  #     end
  # end

  desc "Validate per-Session page structure"
  task :sessions do
    puts "testing session page structure..."
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
