# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestWordFrequency < Minitest::Test
  def test_simple
    assert_equal(
      { 'the' => 2, 'quick' => 2, 'brown' => 1, 'fox' => 2, 'was' => 1 },
      word_frequency('The quick, brown fox; the FOX was quick!')
    )
  end

  def test_case_insensitive
    assert_equal({ 'hello' => 3 }, word_frequency('Hello, HELLO! Hello...'))
  end

  def test_empty
    assert_equal({}, word_frequency(''))
  end

  def test_only_punctuation
    assert_equal({}, word_frequency('!!! ... ???'))
  end

  def test_numbers_ignored
    assert_equal({ 'ruby' => 1 }, word_frequency('Ruby 3.2!'))
  end
end
