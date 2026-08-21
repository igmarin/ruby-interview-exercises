# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestSumAndAverage < Minitest::Test
  def test_integers
    result = sum_and_average([1, 2, 3, 4])
    assert_equal 10, result[0]
    assert_in_delta 2.5, result[1], 0.001
  end

  def test_floats
    result = sum_and_average([1.5, 2.5, 3.0])
    assert_in_delta 7.0, result[0], 0.001
    assert_in_delta 2.333_333, result[1], 0.001
  end

  def test_empty
    assert_nil sum_and_average([])
  end

  def test_single
    result = sum_and_average([5])
    assert_equal 5, result[0]
    assert_in_delta 5.0, result[1], 0.001
  end

  def test_negatives
    result = sum_and_average([-1, 1])
    assert_equal 0, result[0]
    assert_in_delta 0.0, result[1], 0.001
  end
end
