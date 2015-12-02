# Use this file to practice simple unit tests

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative "simple_class"

class DogTest < Minitest::Test
  def test_testing_test
    variable = Dog.method
    assert_equal "Hello", variable
  end
end

class CatTest < Minitest::Test
  def setup
    @cat = Cat.new
  end
  
  def test_cat_class_exists
    klass = Module.const_get(:Cat)
    assert_equal Cat, klass
  end
  
  def test_meow_exists
    method_response = @cat.meow
    assert_equal "meow", method_response, "Method meow did not return 'meow'"
  end
end