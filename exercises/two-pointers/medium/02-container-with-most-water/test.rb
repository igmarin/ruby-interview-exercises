# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestContainerWithMostWater < Minitest::Test
  def test_example_1
    assert_equal 49, max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
  end

  def test_example_2
    assert_equal 1, max_area([1, 1])
  end

  def test_increasing
    assert_equal 4, max_area([1, 2, 3, 4])
  end

  def test_all_equal
    assert_equal 6, max_area([2, 2, 2, 2])
  end

  def test_includes_zero
    assert_equal 0, max_area([0, 0])
    assert_equal 4, max_area([0, 2, 0, 2])
  end

  def test_tall_in_the_middle
    assert_equal 4, max_area([1, 2, 4, 3])
  end
end
