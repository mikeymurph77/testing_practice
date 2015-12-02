gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative "simple_class"

class DogTest < Minitest::Test
  def test_testing_test
    variable = Dog.method
    assert_equal "Hello", variable
  end
end