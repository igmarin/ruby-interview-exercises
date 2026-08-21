# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestIntersection < Minitest::Test
  def test_example_1
    assert_equal [2], intersection([1, 2, 2, 1], [2, 2])
  end

  def test_example_2
    result = intersection([4, 9, 5], [9, 4, 9, 8, 4])
    assert_equal [4, 9].sort, result.sort
  end

  def test_no_common
    assert_equal [], intersection([1, 2, 3], [4, 5, 6])
  end

  def test_empty
    assert_equal [], intersection([], [1, 2])
  end
end
