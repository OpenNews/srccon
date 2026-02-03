require 'jekyll'
require 'yaml'
require 'fileutils'

# Load test:* tasks from separate file
Dir.glob('tasks/*.rake').each { |r| load r }

# Load deployment vars from _config.yml
def deployment_config
  return @deployment_config if @deployment_config
  
  unless File.exist?('_config.yml')
    abort "❌ _config.yml not found. Are you in the project root directory?"
  end
  
  begin
    config = YAML.load_file('_config.yml')
    @deployment_config = config['deployment'] || {}
  rescue => e
    abort "❌ Error loading _config.yml: #{e.message}"
  end
end

# Default task
task default: [:build, :check, :serve]

desc "Validate configuration placeholders"
task :check do
  puts "Validating _config.yml configuration..."
  
  unless File.exist?('_config.yml')
    abort "❌ _config.yml not found. Are you in the project root directory?"
  end
  
  begin
    config = YAML.load_file('_config.yml')
  rescue => e
    abort "❌ Error parsing _config.yml: #{e.message}"
  end
  
  errors = []
  warnings = []
  
  # Check deployment configuration
  if config['deployment']
    deployment = config['deployment']
    
    if deployment['bucket'].to_s.include?('TODO')
      warnings << "deployment.bucket contains TODO placeholder"
    end
    
    if deployment['staging_bucket'].to_s.include?('TODO')
      warnings << "deployment.staging_bucket contains TODO placeholder"
    end
    
    if deployment['cloudfront_distribution_id'].to_s.include?('TODO')
      warnings << "deployment.cloudfront_distribution_id contains TODO placeholder"
    end
  else
    warnings << "No deployment configuration found in _config.yml"
  end
  
  if errors.any?
    puts "\n❌ Configuration Errors (MUST FIX):"
    errors.each { |e| puts "  - #{e}" }
  end
  
  if warnings.any?
    puts "\n⚠️  Configuration Warnings:"
    warnings.each { |w| puts "  - #{w}" }
  end
  
  if errors.empty? && warnings.empty?
    puts "✅ Configuration looks good!"
  end
end

desc "Build the Jekyll site"
task :build do
  puts "Building Jekyll site..."
  options = {
    "source" => ".",
    "destination" => "./_site"
  }
  Jekyll::Site.new(Jekyll.configuration(options)).process
end

desc "Clean the build directory"
task :clean do
  puts "Cleaning _site directory..."
  FileUtils.rm_rf(['_site', '.jekyll-cache', '.jekyll-metadata'])
end

desc "Build and serve the site locally"
task :serve do
  puts "Starting Jekyll server..."
  sh "bundle exec jekyll serve"
end

namespace :deploy do
  desc "Run all pre-deployment checks"
  task :precheck => [:check, :build, 'test:all'] do
    puts "\n✅ All pre-deployment checks passed!"
    puts "\nDeploy with:"
    puts "  rake deploy:staging          # Dry-run to staging"
    puts "  rake deploy:staging:real     # Actually deploy to staging"
    puts "  rake deploy:production       # Dry-run to production"
    puts "  rake deploy:production:real  # Actually deploy to production"
  end
  
  # Common S3 sync arguments
  S3_ARGS = "--delete --cache-control 'public, max-age=3600'"
  
  desc "Deploy to staging (dry-run by default)"
  namespace :staging do
    task :default => :dryrun
    
    desc "Dry-run staging deploy"
    task :dryrun => :build do
      config = deployment_config
      staging_bucket = config['staging_bucket'] || "staging.#{config['bucket']}"
      abort "❌ Staging bucket not configured in _config.yml deployment section" unless staging_bucket
      
      puts "[DRY RUN] Deploying to staging bucket: #{staging_bucket}..."
      sh "aws s3 sync _site/ s3://#{staging_bucket} --dryrun #{S3_ARGS}"
      puts "\n✅ Dry-run complete. To deploy for real, run: rake deploy:staging:real"
    end

    desc "Real staging deploy (with confirmation)"
    task :real => :precheck do
      config = deployment_config
      staging_bucket = config['staging_bucket'] || "staging.#{config['bucket']}"
      abort "❌ Staging bucket not configured in _config.yml deployment section" unless staging_bucket
      
      puts "⚠️  Deploying to STAGING: #{staging_bucket}"
      print "Continue? (y/N) "

      response = STDIN.gets.chomp
      abort "Deployment cancelled" unless response.downcase == 'y'
      
      puts "Deploying to staging bucket: #{staging_bucket}..."
      sh "aws s3 sync _site/ s3://#{staging_bucket} #{S3_ARGS}"
      puts "\n✅ Successfully deployed to staging!"
    end
  end

  desc "Deploy to production (dry-run by default)"
  namespace :production do
    task :default => :dryrun

    desc "Dry-run production deploy"
    task :dryrun => :build do
      config = deployment_config
      prod_bucket = config['bucket']
      cloudfront_dist = config['cloudfront_distribution_id']
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
    task :real => :precheck do
      config = deployment_config
      prod_bucket = config['bucket']
      cloudfront_dist = config['cloudfront_distribution_id']
      abort "❌ Production bucket not configured in _config.yml deployment section" unless prod_bucket
      
      puts "🚨 DEPLOYING TO PRODUCTION: #{prod_bucket}"
      print "Are you absolutely sure? (yes/N) "
      response = STDIN.gets.chomp
      abort "Deployment cancelled" unless response == 'yes'
      
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
