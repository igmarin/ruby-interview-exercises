# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestProductOfArrayExceptSelf < Minitest::Test
  def test_example_1
    assert_equal [24, 12, 8, 6], product_except_self([1, 2, 3, 4])
  end

  def test_example_2
    assert_equal [0, 0, 9, 0, 0], product_except_self([-1, 1, 0, -3, 3])
  end

  def test_two_elements
    assert_equal [2, 1], product_except_self([1, 2])
  end

  def test_includes_one_zero
    assert_equal [0, 0, 0, 6], product_except_self([1, 2, 3, 0])
  end

  def test_includes_two_zeros
    assert_equal [0, 0, 0, 0], product_except_self([1, 0, 3, 0])
  end

  def test_negatives
    assert_equal [12, -6, -8], product_except_self([-2, 4, 3])
  end

  def test_ones
    assert_equal [1, 1, 1], product_except_self([1, 1, 1])
  end
end
