namespace :format do
  desc "Run StandardRB linter to check Ruby code style"
  task :ruby do
    puts "Checking Ruby code style with StandardRB..."
    sh "bundle exec standardrb"
  end

  desc "Auto-fix Ruby code formatting issues with StandardRB"
  task :ruby_fix do
    puts "Auto-fixing Ruby code formatting with StandardRB..."
    sh "bundle exec standardrb --fix"
  end

  desc "Check non-Ruby files with Prettier (HTML, CSS, JS, YAML, Markdown)"
  task :prettier do
    puts "Checking file formatting with Prettier..."
    sh "npm run format:check"
  end

  desc "Auto-fix non-Ruby files with Prettier"
  task :prettier_fix do
    puts "Auto-fixing file formatting with Prettier..."
    sh "npm run format"
  end
end

desc "Check all code formatting (Ruby + other files)"
task lint: %w[format:ruby format:prettier] do
  puts "✅ All formatting checks passed!"
end

desc "Auto-fix all code formatting issues (Ruby + other files)"
task format: %w[format:ruby_fix format:prettier_fix] do
  puts "✅ All files formatted!"
end
