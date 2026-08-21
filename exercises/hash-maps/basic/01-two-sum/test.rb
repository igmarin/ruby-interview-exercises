# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestTwoSum < Minitest::Test
  def test_example_1
    assert_equal [0, 1], two_sum([2, 7, 11, 15], 9)
  end

  def test_example_2
    assert_equal [1, 2], two_sum([3, 2, 4], 6)
  end

  def test_example_3
    assert_equal [0, 1], two_sum([3, 3], 6)
  end

  def test_negative_numbers
    assert_equal [2, 4], two_sum([-1, -2, -3, -4, -5], -8)
  end

  def test_large_numbers
    assert_equal [0, 3], two_sum([1_000_000_000, 2, 3, -1_000_000_000], 0)
  end
end
