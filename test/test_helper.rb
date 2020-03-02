
require "minitest"
require "minitest/autorun"
require "minitest/reporters"
require "minitest/skip_dsl"
require "simplecov"
SimpleCov.start do
  add_filter 'test/' # Tests should not be checked for coverage.
end

require "date"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative "../lib/room.rb"
require_relative "../lib/hotel_controller.rb"
require_relative "../lib/reservation.rb"
require_relative "../lib/date_range.rb"