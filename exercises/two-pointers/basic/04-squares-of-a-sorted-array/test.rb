# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestSquaresOfASortedArray < Minitest::Test
  def test_example_1
    assert_equal [0, 1, 9, 16, 100], sorted_squares([-4, -1, 0, 3, 10])
  end

  def test_example_2
    assert_equal [4, 9, 9, 49, 121], sorted_squares([-7, -3, 2, 3, 11])
  end

  def test_all_non_negative
    assert_equal [1, 4, 9, 16], sorted_squares([1, 2, 3, 4])
  end

  def test_all_negative
    assert_equal [1, 4, 9, 16], sorted_squares([-4, -3, -2, -1])
  end

  def test_single_element
    assert_equal [0], sorted_squares([0])
    assert_equal [25], sorted_squares([-5])
  end

  def test_negatives_and_positives_same_magnitude
    assert_equal [1, 1, 4, 4], sorted_squares([-2, -1, 1, 2])
  end
end
