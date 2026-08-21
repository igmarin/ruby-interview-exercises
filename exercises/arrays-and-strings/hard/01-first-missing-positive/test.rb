# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestFirstMissingPositive < Minitest::Test
  def test_example_1
    assert_equal 3, first_missing_positive([1, 2, 0])
  end

  def test_example_2
    assert_equal 2, first_missing_positive([3, 4, -1, 1])
  end

  def test_example_3
    assert_equal 1, first_missing_positive([7, 8, 9, 11, 12])
  end

  def test_single_one
    assert_equal 2, first_missing_positive([1])
  end

  def test_single_other
    assert_equal 1, first_missing_positive([2])
    assert_equal 1, first_missing_positive([-5])
  end

  def test_already_complete
    assert_equal 4, first_missing_positive([1, 2, 3])
  end

  def test_duplicates
    assert_equal 2, first_missing_positive([1, 1, 1])
    assert_equal 3, first_missing_positive([1, 2, 2])
  end

  def test_mixed_negatives_and_gap
    assert_equal 1, first_missing_positive([-1, -2, 0])
  end
end
