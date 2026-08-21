# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestReverseString < Minitest::Test
  def test_example_1
    assert_equal 'olleh', reverse_string('hello')
  end

  def test_example_2
    assert_equal 'hannaH', reverse_string('Hannah')
  end

  def test_example_3
    assert_equal '', reverse_string('')
  end

  def test_single_character
    assert_equal 'a', reverse_string('a')
  end

  def test_with_spaces_and_punctuation
    assert_equal '!dlrow ,olleH', reverse_string('Hello, world!')
  end
end
