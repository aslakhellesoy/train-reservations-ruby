require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new

Cucumber::Rake::Task.new

Cucumber::Rake::Task.new(:cucumber_capybara) do |t|
  t.profile = 'capybara'
end

Cucumber::Rake::Task.new(:cucumber_capybara_webdriver) do |t|
  t.profile = 'capybara-webdriver'
end

task :default => [
  :spec, 
  :cucumber, 
  # :cucumber_capybara, 
  # :cucumber_capybara_webdriver
]