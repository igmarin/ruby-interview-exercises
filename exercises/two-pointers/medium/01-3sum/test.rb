# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestThreeSum < Minitest::Test
  def test_example_1
    assert_equal [[-1, -1, 2], [-1, 0, 1]], three_sum([-1, 0, 1, 2, -1, -4])
  end

  def test_example_2
    assert_equal [], three_sum([0, 1, 1])
  end

  def test_example_3
    assert_equal [[0, 0, 0]], three_sum([0, 0, 0])
  end

  def test_empty_and_small_arrays
    assert_equal [], three_sum([])
    assert_equal [], three_sum([1, 2])
  end

  def test_duplicates_reduced_to_unique_triplets
    assert_equal [[-2, 0, 2]], three_sum([-2, 0, 0, 2, 2])
  end

  def test_all_positive
    assert_equal [], three_sum([1, 2, 3, 4])
  end

  def test_all_negative
    assert_equal [], three_sum([-1, -2, -3, -4])
  end
end
