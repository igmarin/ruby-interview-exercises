# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestNumberOfIslands < Minitest::Test
  def test_two_islands
    grid = [
      ['1', '1', '1', '1', '0'],
      ['1', '1', '0', '1', '0'],
      ['1', '1', '0', '0', '0'],
      ['0', '0', '0', '0', '1']
    ]
    assert_equal 2, num_islands(grid.map(&:dup))
  end

  def test_three_islands
    grid = [
      ['1', '1', '0', '0', '0'],
      ['1', '1', '0', '0', '0'],
      ['0', '0', '1', '0', '0'],
      ['0', '0', '0', '1', '1']
    ]
    assert_equal 3, num_islands(grid.map(&:dup))
  end

  def test_empty
    assert_equal 0, num_islands([])
  end

  def test_all_water
    grid = [
      ['0', '0'],
      ['0', '0']
    ]
    assert_equal 0, num_islands(grid.map(&:dup))
  end

  def test_single_land
    assert_equal 1, num_islands([['1']])
  end
end
