# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMaxConsecutiveOnes < Minitest::Test
  def test_example_1
    assert_equal 3, find_max_consecutive_ones([1, 1, 0, 1, 1, 1])
  end

  def test_example_2
    assert_equal 2, find_max_consecutive_ones([1, 0, 1, 1, 0, 1])
  end

  def test_all_zeros
    assert_equal 0, find_max_consecutive_ones([0, 0, 0])
  end

  def test_all_ones
    assert_equal 4, find_max_consecutive_ones([1, 1, 1, 1])
  end

  def test_single_zero
    assert_equal 0, find_max_consecutive_ones([0])
  end

  def test_single_one
    assert_equal 1, find_max_consecutive_ones([1])
  end

  def test_ones_at_both_ends
    assert_equal 3, find_max_consecutive_ones([1, 1, 1, 0, 1])
  end
end
