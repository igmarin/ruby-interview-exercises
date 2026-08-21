# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestSlidingWindowMaximum < Minitest::Test
  def test_example_1
    assert_equal [3, 3, 5, 5, 6, 7], max_sliding_window([1, 3, -1, -3, 5, 3, 6, 7], 3)
  end

  def test_single_element
    assert_equal [1], max_sliding_window([1], 1)
  end

  def test_k_equals_1
    assert_equal [1, -1], max_sliding_window([1, -1], 1)
  end

  def test_k_equals_length
    assert_equal [7], max_sliding_window([3, 1, 7, 2], 4)
  end

  def test_all_equal
    assert_equal [4, 4, 4], max_sliding_window([4, 4, 4, 4, 4], 3)
  end

  def test_descending
    assert_equal [5, 4, 3, 2], max_sliding_window([5, 4, 3, 2, 1], 2)
  end

  def test_ascending
    assert_equal [4, 5, 6, 7], max_sliding_window([1, 2, 3, 4, 5, 6, 7], 4)
  end

  def test_negatives
    assert_equal [-1, -2, -2], max_sliding_window([-1, -2, -3, -2, -4], 3)
  end
end
