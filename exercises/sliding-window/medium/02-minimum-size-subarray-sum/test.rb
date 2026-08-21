# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMinimumSizeSubarraySum < Minitest::Test
  def test_example_1
    assert_equal 2, min_sub_array_len(7, [2, 3, 1, 2, 4, 3])
  end

  def test_example_2
    assert_equal 1, min_sub_array_len(4, [1, 4, 4])
  end

  def test_example_3
    assert_equal 0, min_sub_array_len(11, [1, 1, 1, 1, 1, 1, 1, 1])
  end

  def test_entire_array_needed
    assert_equal 3, min_sub_array_len(6, [1, 2, 3])
  end

  def test_single_element_meets_target
    assert_equal 1, min_sub_array_len(5, [5])
  end

  def test_single_element_below_target
    assert_equal 0, min_sub_array_len(6, [5])
  end

  def test_window_in_the_middle
    assert_equal 2, min_sub_array_len(8, [1, 1, 5, 4, 1])
  end
end
