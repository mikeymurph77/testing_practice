require 'minitest/autorun'
require 'minitest/pride'
require_relative 'calculator'

class CalculatorTest < Minitest::Test
  def setup
    calc = Calculator.new
  end

  def test_should_return_zero_for_empty_string

  end
end