# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestLRUCache < Minitest::Test
  def test_example
    cache = LRUCache.new(2)
    cache.put(1, 1)
    cache.put(2, 2)
    assert_equal 1, cache.get(1)
    cache.put(3, 3)
    assert_equal(-1, cache.get(2))
    cache.put(4, 4)
    assert_equal(-1, cache.get(1))
    assert_equal 3, cache.get(3)
    assert_equal 4, cache.get(4)
  end

  def test_update_existing
    cache = LRUCache.new(2)
    cache.put(1, 1)
    cache.put(2, 2)
    cache.put(1, 10)
    cache.put(3, 3)
    assert_equal 10, cache.get(1)
    assert_equal(-1, cache.get(2))
    assert_equal 3, cache.get(3)
  end

  def test_capacity_zero
    cache = LRUCache.new(0)
    cache.put(1, 1)
    assert_equal(-1, cache.get(1))
  end

  def test_capacity_one
    cache = LRUCache.new(1)
    cache.put(1, 1)
    cache.put(2, 2)
    assert_equal(-1, cache.get(1))
    assert_equal 2, cache.get(2)
  end
end
