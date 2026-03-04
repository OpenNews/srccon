require "jekyll"
require "yaml"
require "psych"
require "fileutils"

# Load test:* tasks from separate file
Dir.glob("tasks/*.rake").each { |r| load r }

# Recursively walk a Psych AST node and collect duplicate mapping keys
def collect_yaml_duplicate_keys(node, file, errors = [])
  return errors unless node.respond_to?(:children) && node.children

  if node.is_a?(Psych::Nodes::Mapping)
    keys = node.children.each_slice(2).map { |k, _| k.value if k.respond_to?(:value) }.compact
    keys.group_by(&:itself).each do |key, hits|
      errors << "#{file}: duplicate key '#{key}'" if hits.size > 1
    end
  end

  node.children.each { |child| collect_yaml_duplicate_keys(child, file, errors) }
  errors
end

desc "Validate YAML files for syntax errors and duplicate keys"
task :validate_yaml do
  errors = []

  Dir.glob("{_config.yml,_data/**/*.{yml,yaml}}").sort.each do |file|
    begin
      node = Psych.parse_file(file)
      collect_yaml_duplicate_keys(node, file, errors)
      YAML.safe_load_file(file)
    rescue Psych::SyntaxError => e
      errors << "#{file}: syntax error — #{e.message}"
    rescue Psych::DisallowedClass => e
      errors << "#{file}: unsafe YAML — #{e.message}"
    rescue => e
      errors << "#{file}: #{e.message}"
    end
  end

  if errors.any?
    puts "❌ YAML validation errors:"
    errors.each { |e| puts "  - #{e}" }
    abort
  else
    puts "✅ YAML files are valid"
  end
end

# Load deployment vars from _config.yml
def deployment_config
  return @deployment_config if @deployment_config

  unless File.exist?("_config.yml")
    abort "❌ _config.yml not found. Are you in the project root directory?"
  end

  begin
    config = YAML.safe_load_file("_config.yml")
    @deployment_config = config["deployment"] || {}
  rescue => e
    abort "❌ Error loading _config.yml: #{e.message}"
  end
end

# Default task
task default: [:build, :check, :serve]

desc "Validate configuration has been updated from template defaults"
task check: :validate_yaml do

  unless File.exist?("_config.yml")
    abort "\n❌ _config.yml not found. Are you in the project root directory?"
  end

  begin
    config = YAML.safe_load_file("_config.yml")
  rescue => e
    abort "\n❌ Error parsing _config.yml: #{e.message}"
  end

  unless config["defaults"].is_a?(Array)
    abort "\n❌ _config.yml is missing 'defaults' array"
  end

  default_scope = config["defaults"].find { |d| d["scope"] && d["scope"]["path"] == "" }
  unless default_scope && default_scope["values"]
    abort "\n❌ _config.yml is missing default scope with empty path"
  end

  # defaults = default_scope["values"]
  deployments = config["deployment"]

  errors = []
  warnings = []

  # Check for required deployment configuration
  errors << "AWS buckets are still set to demo site in deployment config" if deployments["bucket"].to_s.include?("site-starterkit") || deployments["staging_bucket"].to_s.include?("site-starterkit")
  if deployments["cloudfront_distribution_id"].to_s.include?("E1234ABCD5678")
    errors << "AWS cloudfront_distribution_id is still set to demo site in deployment config, set to site's prd distribution ID (see README)"
  end

  if errors.any?
    puts "\n❌ Configuration Errors (MUST FIX):"
    errors.each { |e| puts "  - #{e}" }
  end

  if warnings.any?
    puts "\n⚠️  Configuration Warnings:"
    warnings.each { |w| puts "  - #{w}" }
  end

  if errors.empty?
    puts "✅ Configuration looks good!"
  end
end

desc "Build the Jekyll site"
task build: :validate_yaml do
  options = {
    "source" => ".",
    "destination" => "./_site",
    "config" => "_config.yml",
    "quiet" => true,
  }
  begin 
    Jekyll::Site.new(Jekyll.configuration(options)).process
  rescue => e
    abort "\n❌ Jekyll build failed: #{e.message}"
  end
  
  puts "✅ Built successfully!"
end

desc "Clean the build directory"
task :clean do
  begin
    FileUtils.rm_rf(["_site", ".jekyll-cache", ".jekyll-metadata"])
  rescue => e
    abort "\n❌ Failed to clean build directory: #{e.message}"
  end

  puts "✅ Cleanup complete"
end

desc "Build and serve the site locally"
task :serve do
  puts "Starting Jekyll server..."
  begin
    sh "bundle exec jekyll serve"
  rescue => e
    abort "\n❌ Failed to start Jekyll server: #{e.message}"
  end
end

# Common S3 sync arguments in :deploy steps
S3_ARGS = "--delete --cache-control 'public, max-age=3600'"

desc "MOSTLY used by GitHub Actions on push/merges to `main` and `staging` branches"
namespace :deploy do
  desc "Run all pre-deployment checks"
  task precheck: [:check, :build, :test] do
    puts "\n✅ All pre-deployment checks passed!"
    puts "\nDeploy with:"
    puts "  rake deploy:staging          # Dry-run to staging"
    puts "  rake deploy:staging:real     # Actually deploy to staging"
    puts "  rake deploy:production       # Dry-run to production"
    puts "  rake deploy:production:real  # Actually deploy to production"
  end

  desc "Deploy to staging (dry-run by default)"
  namespace :staging do
    task default: :dryrun

    desc "Dry-run staging deploy"
    task dryrun: :build do
      config = deployment_config
      staging_bucket = config["staging_bucket"] || "staging.#{config["bucket"]}"
      abort "❌ Staging bucket not configured in _config.yml deployment section" unless staging_bucket

      puts "[DRY RUN] Deploying to staging bucket: #{staging_bucket}..."
      sh "aws s3 sync _site/ s3://#{staging_bucket} --dryrun #{S3_ARGS}"
      puts "\n✅ Dry-run complete. To deploy for real, run: rake deploy:staging:real"
    end

    desc "Real staging deploy (with confirmation)"
    task real: :precheck do
      config = deployment_config
      staging_bucket = config["staging_bucket"] || "staging.#{config["bucket"]}"
      abort "❌ Staging bucket not configured in _config.yml deployment section" unless staging_bucket

      puts "⚠️  Deploying to STAGING: #{staging_bucket}"
      print "Continue? (y/N) "

      response = $stdin.gets.chomp
      abort "Deployment cancelled" unless response.downcase == "y"

      puts "Deploying to staging bucket: #{staging_bucket}..."
      sh "aws s3 sync _site/ s3://#{staging_bucket} #{S3_ARGS}"
      puts "\n✅ Successfully deployed to staging!"
    end
  end

  desc "Deploy to production (dry-run by default)"
  namespace :production do
    task default: :dryrun

    desc "Dry-run production deploy"
    task dryrun: :build do
      config = deployment_config
      prod_bucket = config["bucket"]
      cloudfront_dist = config["cloudfront_distribution_id"]
      abort "❌ Production bucket not configured in _config.yml deployment section" unless prod_bucket

      puts "[DRY RUN] Deploying to production bucket: #{prod_bucket}..."
      sh "aws s3 sync _site/ s3://#{prod_bucket} --dryrun #{S3_ARGS}"

      if cloudfront_dist && !cloudfront_dist.empty?
        puts "\n[DRY RUN] Would invalidate CloudFront: #{cloudfront_dist}"
      else
        puts "\n⚠️  No CloudFront distribution configured (cache won't be invalidated)"
      end

      puts "\n✅ Dry-run complete. To deploy for real, run: rake deploy:production:real"
    end

    desc "Real production deploy (with confirmation)"
    task real: :precheck do
      config = deployment_config
      prod_bucket = config["bucket"]
      cloudfront_dist = config["cloudfront_distribution_id"]
      abort "❌ Production bucket not configured in _config.yml deployment section" unless prod_bucket

      puts "🚨 DEPLOYING TO PRODUCTION: #{prod_bucket}"
      print "Are you absolutely sure? (yes/N) "
      response = $stdin.gets.chomp
      abort "Deployment cancelled" unless response == "yes"

      puts "\nDeploying to production bucket: #{prod_bucket}..."
      sh "aws s3 sync _site/ s3://#{prod_bucket} #{S3_ARGS}"

      if cloudfront_dist && !cloudfront_dist.empty?
        puts "\nInvalidating CloudFront distribution: #{cloudfront_dist}..."
        sh "aws cloudfront create-invalidation --distribution-id #{cloudfront_dist} --paths '/*'"
        puts "\n✅ CloudFront cache invalidated"
      else
        puts "\n⚠️  Skipping CloudFront invalidation (not configured)"
      end

      puts "\n🎉 Successfully deployed to production!"
    end
  end
end
