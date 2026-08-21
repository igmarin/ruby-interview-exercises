# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestContainsDuplicateII < Minitest::Test
  def test_example_1
    assert contains_nearby_duplicate([1, 2, 3, 1], 3)
  end

  def test_example_2
    assert contains_nearby_duplicate([1, 0, 1, 1], 1)
  end

  def test_example_3
    refute contains_nearby_duplicate([1, 2, 3, 1, 2, 3], 2)
  end

  def test_k_is_zero
    refute contains_nearby_duplicate([1, 2, 1], 0)
  end

  def test_empty_array
    refute contains_nearby_duplicate([], 0)
  end

  def test_exact_distance_k
    assert contains_nearby_duplicate([1, 2, 3, 1], 3)
  end

  def test_distance_greater_than_k
    refute contains_nearby_duplicate([1, 2, 3, 4, 1], 3)
  end
end
