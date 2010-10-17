require 'bundler'
Bundler::GemHelper.install_tasks

Bundler.require :development

require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |spec|
end

task :default => :spec
