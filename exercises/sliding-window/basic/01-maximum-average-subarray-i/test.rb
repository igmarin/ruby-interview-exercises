# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMaximumAverageSubarrayI < Minitest::Test
  def test_example_1
    assert_in_delta 12.75, find_max_average([1, 12, -5, -6, 50, 3], 4), 0.0001
  end

  def test_single_element
    assert_in_delta 5.0, find_max_average([5], 1), 0.0001
  end

  def test_all_negatives
    assert_in_delta(-1.5, find_max_average([-1, -2, -3, -4], 2), 0.0001)
  end

  def test_k_equals_length
    assert_in_delta 3.0, find_max_average([1, 2, 3, 4, 5], 5), 0.0001
  end

  def test_larger_k
    assert_in_delta 4.0, find_max_average([0, 4, 0, 3, 2], 1), 0.0001
  end
end
