# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestAlienDictionary < Minitest::Test
  def test_example_1
    assert_equal 'wertf', alien_order(%w[wrt wrf er ett rftt])
  end

  def test_example_2
    assert_equal 'zx', alien_order(%w[z x])
  end

  def test_example_3_cycle
    assert_equal '', alien_order(%w[z x z])
  end

  def test_prefix_invalid
    assert_equal '', alien_order(%w[abc ab])
  end

  def test_single_word
    assert_equal 'abc', alien_order(['abc'])
  end

  def test_same_words
    assert_equal 'ab', alien_order(%w[ab ab])
  end

  def test_lexicographically_smallest
    assert_equal 'abcd', alien_order(%w[a b c d])
  end

  def test_disconnected_letters
    result = alien_order(%w[z z])
    assert_equal 'z', result
  end
end
