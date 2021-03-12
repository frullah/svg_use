# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :test_all do
  rails_versions = %w[5.0.0 5.1.0 5.2.0 6.0.0 6.1.0]
  rails_versions.each do |rails_version|
    env = "BUNDLE_GEMFILE=spec/gemfiles/rails_#{rails_version}.Gemfile"
    sh %(#{env} bundle install --quiet && #{env} bundle exec rake spec)
  end
end
