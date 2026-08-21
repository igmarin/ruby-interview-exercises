# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestSubarraySumEqualsK < Minitest::Test
  def test_example_1
    assert_equal 2, subarray_sum([1, 1, 1], 2)
  end

  def test_example_2
    assert_equal 2, subarray_sum([1, 2, 3], 3)
  end

  def test_single_element_match
    assert_equal 1, subarray_sum([5], 5)
  end

  def test_single_element_miss
    assert_equal 0, subarray_sum([5], 3)
  end

  def test_zeros_and_target_zero
    assert_equal 3, subarray_sum([0, 0], 0)
  end

  def test_negatives
    assert_equal 2, subarray_sum([1, -1, 1], 0)
  end

  def test_entire_array
    assert_equal 1, subarray_sum([1, 2, 3, 4], 10)
  end

  def test_no_subarray
    assert_equal 0, subarray_sum([1, 2, 3], 7)
  end
end
