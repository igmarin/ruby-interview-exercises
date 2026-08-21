# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestFourSum < Minitest::Test
  def test_example_1
    result = normalize(four_sum([1, 0, -1, 0, -2, 2], 0))
    expected = normalize([[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]])
    assert_equal expected, result
  end

  def test_example_2
    result = normalize(four_sum([2, 2, 2, 2, 2], 8))
    assert_equal [[2, 2, 2, 2]], result
  end

  def test_no_solution
    assert_equal [], four_sum([1, 2, 3, 4], 100)
  end

  def test_too_few_numbers
    assert_equal [], four_sum([1, 2, 3], 6)
    assert_equal [], four_sum([], 0)
  end

  def test_negatives
    assert_equal [[-4, -3, -2, -1]], normalize(four_sum([-5, -4, -3, -2, -1], -10))
  end

  def test_zero_target_with_zeros
    assert_equal [[0, 0, 0, 0]], normalize(four_sum([0, 0, 0, 0], 0))
  end

  def test_mixed
    result = normalize(four_sum([1, 2, 3, 4, 5], 10))
    expected = normalize([[1, 2, 3, 4]])
    assert_equal expected, result
  end

  private

  def normalize(quads)
    quads.map(&:sort).sort
  end
end
