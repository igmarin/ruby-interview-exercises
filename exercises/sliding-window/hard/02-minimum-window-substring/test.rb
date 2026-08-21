# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestMinimumWindowSubstring < Minitest::Test
  def test_example_1
    assert_equal 'BANC', min_window('ADOBECODEBANC', 'ABC')
  end

  def test_example_2
    assert_equal 'a', min_window('a', 'a')
  end

  def test_example_3
    assert_equal '', min_window('a', 'aa')
  end

  def test_whole_string
    assert_equal 'abc', min_window('abc', 'cba')
  end

  def test_duplicates_in_t
    assert_equal 'ADOBECODEBA', min_window('ADOBECODEBANC', 'AABC')
  end

  def test_no_window
    assert_equal '', min_window('xyz', 'a')
  end

  def test_case_sensitive
    assert_equal 'Aa', min_window('Aa', 'Aa')
    assert_equal '', min_window('aa', 'AA')
  end

  def test_leftmost_of_equal_length
    assert_equal 'ab', min_window('abdcab', 'ab')
  end
end
