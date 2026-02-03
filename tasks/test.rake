require 'html-proofer'
require 'yaml'

namespace :test do

    desc "Check the built site with html-proofer"
    task :html_proofer do
        puts "Testing site with html-proofer..."

        # if no _site/, remind user to run bundle exec rake build first
        unless Dir.exist?('./_site')
            abort "❌ No _site/ directory found. Please run 'bundle exec rake build' first."
        end

        HTMLProofer.check_directory(
            "./_site",
            {
            disable_external: true,
            enforce_https: false,
            ignore_urls: [/^http:\/\/(localhost|127\.0\.0\.1)/],
            allow_hash_href: true
            }
        ).run
    end

    desc "Check common Liquid template issues"
    task :templates do
        puts "testing templates..."
        errors = []
        warnings = []
        
        # Find files with potentially broken Liquid templating
        Dir.glob('**/*.{html,md}', File::FNM_DOTMATCH).each do |file|
            next if file.start_with?('_archive', '_site/', '.git/', 'vendor/', 'node_modules/', 'temp/')
            
            content = File.read(file)
            lines = content.split("\n")
            
            # Check each line for issues
            lines.each_with_index do |line, idx|
                line_num = idx + 1
                
                # Check for potentially unescaped {{ }} in href (without proper Liquid quotes)
                if line =~ /href="\{\{[^}]+\}\}"/ && line !~ /href="\{\{\s*\w+\.\w+.*\}\}"/
                    warnings << "#{file}:#{line_num}: Possibly unescaped Liquid in href:\n      #{line.strip}"
                end
                
                # Check for site.root_url that should be page.root_url (common mistake)
                if line.include?('site.root_url')
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
        
        Dir.glob('*.md').each do |file|
            next if file =~ /^[A-Z]+\.md$/
            
            content = File.read(file)
            if content =~ /\A---\s*\n(.*?)\n---\s*\n/m
                fm = YAML.safe_load($1)
                warnings << "#{file}: Missing 'section' field" unless fm['section']
                warnings << "#{file}: Missing 'permalink' field" unless fm['permalink']
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
        
        Dir.glob('_site/**/*.html').each do |file|
            content = File.read(file)
            
            # Common placeholders
            %w[TODO FIXME PLACEHOLDER].each do |placeholder|
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
        
        Dir.glob('_site/**/*.html').each do |file|
            content = File.read(file)
            
            # test images have alt text
            content.scan(/<img[^>]+>/).each do |img|
                unless img.include?('alt=')
                    issues << "#{file}: Image without alt attribute: #{img[0..50]}..."
                end
            end
            
            # test for empty headings
            if content =~ /<h[1-6][^>]*>\s*<\/h[1-6]>/
                issues << "#{file}: Empty heading tag found"
            end
            
            # test lang attribute exists
            unless content =~ /<html[^>]+lang=/
                issues << "#{file}: Missing lang attribute on <html>"
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
        
        # test HTML file sizes
        Dir.glob('_site/**/*.html').each do |file|
            size = File.size(file)
            if size > 200_000
                warnings << "#{file}: Large HTML file (#{size / 1024}KB)"
            end
            
            content = File.read(file)
            
            # test for excessive inline styles
            inline_styles = content.scan(/<[^>]+style=/).size
            if inline_styles > 10
                warnings << "#{file}: #{inline_styles} inline style attributes (consider external CSS)"
            end
            
            # test for large base64 images
            if content.include?('data:image')
                warnings << "#{file}: Contains base64-encoded image data (hurts performance)"
            end
        end
        
        # test CSS file sizes
        Dir.glob('_site/**/*.css').each do |file|
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

    desc "Run all tests (comprehensive)"
    task :all => [
        :html_proofer,
        :templates,
        :page_config,
        :placeholders,
        :a11y,
        :performance
    ] do
        puts "\n" + "=" * 60
        puts "✅ All validation tests passed!"
        puts "=" * 60
    end
end
