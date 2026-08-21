# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestValidAnagram < Minitest::Test
  def test_example_1
    assert_equal true, is_anagram('anagram', 'nagaram')
  end

  def test_example_2
    assert_equal false, is_anagram('rat', 'car')
  end

  def test_different_lengths
    assert_equal false, is_anagram('a', 'ab')
  end

  def test_empty
    assert_equal true, is_anagram('', '')
  end

  def test_repeated_chars
    assert_equal true, is_anagram('aabbcc', 'abcabc')
  end
end
