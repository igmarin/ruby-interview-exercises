# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestTopKFrequent < Minitest::Test
  def test_example_1
    result = top_k_frequent([1, 1, 1, 2, 2, 3], 2)
    assert_equal [1, 2], result.sort
  end

  def test_example_2
    assert_equal [1], top_k_frequent([1], 1)
  end

  def test_k_equals_unique_count
    result = top_k_frequent([1, 1, 2, 2, 3, 3, 3], 3)
    assert_equal [1, 2, 3], result.sort
  end

  def test_large_k
    result = top_k_frequent([5, 5, 5, 5, 4, 4, 3, 2, 2, 1], 5)
    assert_equal [1, 2, 3, 4, 5].sort, result.sort
  end
end
