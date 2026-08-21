# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMedianFinder < Minitest::Test
  def test_example_1
    finder = MedianFinder.new
    finder.add_num(1)
    finder.add_num(2)
    assert_equal 1.5, finder.find_median
    finder.add_num(3)
    assert_equal 2.0, finder.find_median
  end

  def test_negative_stream
    finder = MedianFinder.new
    finder.add_num(-1)
    assert_equal(-1.0, finder.find_median)
    finder.add_num(-2)
    assert_equal(-1.5, finder.find_median)
    finder.add_num(-3)
    assert_equal(-2.0, finder.find_median)
    finder.add_num(-4)
    assert_equal(-2.5, finder.find_median)
    finder.add_num(-5)
    assert_equal(-3.0, finder.find_median)
  end

  def test_mixed_stream
    finder = MedianFinder.new
    finder.add_num(5)
    finder.add_num(-5)
    finder.add_num(0)
    assert_equal 0.0, finder.find_median
  end

  def test_single
    finder = MedianFinder.new
    finder.add_num(42)
    assert_equal 42.0, finder.find_median
  end

  def test_even_average
    finder = MedianFinder.new
    [1, 2, 3, 4].each { |n| finder.add_num(n) }
    assert_equal 2.5, finder.find_median
  end
end
