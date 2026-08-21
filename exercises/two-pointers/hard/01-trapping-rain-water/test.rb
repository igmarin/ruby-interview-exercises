# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestTrappingRainWater < Minitest::Test
  def test_example_1
    assert_equal 6, TrappingRainWater.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])
  end

  def test_example_2
    assert_equal 9, TrappingRainWater.trap([4, 2, 0, 3, 2, 5])
  end

  def test_empty
    assert_equal 0, TrappingRainWater.trap([])
  end

  def test_single_bar
    assert_equal 0, TrappingRainWater.trap([5])
  end

  def test_two_bars
    assert_equal 0, TrappingRainWater.trap([1, 2])
  end

  def test_flat
    assert_equal 0, TrappingRainWater.trap([0, 0, 0])
  end

  def test_ascending
    assert_equal 0, TrappingRainWater.trap([1, 2, 3, 4, 5])
  end

  def test_descending
    assert_equal 0, TrappingRainWater.trap([5, 4, 3, 2, 1])
  end

  def test_small_bowl
    assert_equal 2, TrappingRainWater.trap([2, 0, 2])
  end

  def test_large_plateau
    assert_equal 3, TrappingRainWater.trap([3, 0, 3])
  end
end
