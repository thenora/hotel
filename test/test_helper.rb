require "simplecov"
SimpleCov.start do
  add_filter "test/" # Tests should not be checked for coverage.
end

require "minitest"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"

require "date"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/front_desk"
require_relative "../lib/reservation"
require_relative "../lib/date_range"
