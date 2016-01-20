require 'rspec'
require 'simplecov'
require 'rspec/its'
require 'timecop'

SimpleCov.start

require_relative '../lib/boot'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

SimpleCov.minimum_coverage 100
