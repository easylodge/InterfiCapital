require 'bundler/setup'
require 'interfi_capital'
require 'shoulda/matchers'
require 'faker'
require 'pry'
Bundler.setup

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  # Run specs in random order to surface order dependencies.
  config.order = 'random'
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
