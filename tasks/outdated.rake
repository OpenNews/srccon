require "yaml"

namespace :outdated do
  desc "Check for directly used outdated dependencies"
  task :direct do
    puts "Checking outdated direct dependencies from Gemfile..."
    sh "bundle outdated --only-explicit || true"
  end

  desc "Check for indirectly used outdated dependencies (we can't address these)"
  task :all do
    puts "Checking _all_ outdated dependencies, including those in gems we're using"
    sh "bundle outdated || true"
  end
end

# Default outdated only shows direct dependencies
desc "Check for directly used outdated dependencies"
task outdated: ["outdated:direct"]
