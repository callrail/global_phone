require 'rake/testtask'

task :default => :test

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/*_test.rb"]
  t.warning = true
end

task :gems do
  Dir["*.gemspec"].each do |gemspec|
    system "gem build #{gemspec}"
  end
end

# build is a bundler-defined task
desc 'publish a new version of the gem to Github Packages'
task publish: :build do
  gem = "pkg/global_phone-#{GlobalPhone::VERSION}.gem"
  puts "Pushing #{gem} to Github Packages..."
  puts `gem push --key github --host https://rubygems.pkg.github.com/callrail '#{gem}'`
  exit($?.exitstatus)
end
