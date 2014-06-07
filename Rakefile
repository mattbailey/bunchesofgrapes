# encoding: utf-8

require 'rubygems'
require 'bundler'
Bundler.setup :default, :test, :development

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec

require 'rainbow/ext/string' unless String.respond_to?(:color)
require 'rubocop/rake_task'
Rubocop::RakeTask.new(:rubocop)

task default: [:rubocop, :spec]

begin
  require 'yard'
  DOC_FILES = ['lib/**/*.rb']

  YARD::Rake::YardocTask.new(:doc) do |t|
    t.files   = DOC_FILES
  end

  namespace :doc do
    YARD::Rake::YardocTask.new(:pages) do |t|
      t.files   = DOC_FILES
    end
  end
rescue LoadError
  puts "You need to install YARD."
end
