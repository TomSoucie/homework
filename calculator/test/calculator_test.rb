gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

class CalculatorTest < Minitest::Test
  
  def test_the_object_is_a_calculator
    item = Calculator.new
    assert_instance_of Calculator, item
  end

  def test_the_calculator_total_is_0_by_default
    ti_86 = Calculator.new
    assert_equal 0, ti_86.total
  end

  def test_the_calculator_can_add_and_return_total
    abacus = Calculator.new
    abacus.add([23, 37])
    assert_equal 60, abacus.total
  end

  def test_the_calculator_can_clear_the_memory
    calculator = Calculator.new
    calculator.add([9, 99])
    calculator.clear 
    assert_equal 0, calculator.total

    calculator.add([10, 20])
    assert_equal 30, calculator.total
  end
  
  def test_the_calculator_can_subtract_and_return_total
    skip
  end

end