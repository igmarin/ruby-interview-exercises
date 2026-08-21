# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestTwoSumII < Minitest::Test
  def test_example_1
    assert_equal [1, 2], two_sum([2, 7, 11, 15], 9)
  end

  def test_example_2
    assert_equal [1, 3], two_sum([2, 3, 4], 6)
  end

  def test_example_3
    assert_equal [1, 2], two_sum([-1, 0], -1)
  end

  def test_larger_gap
    assert_equal [3, 5], two_sum([1, 2, 3, 4, 5], 8)
  end

  def test_duplicates
    assert_equal [1, 2], two_sum([0, 0, 3, 4], 0)
  end
end
