# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestRansomNote < Minitest::Test
  def test_example_1
    refute can_construct('a', 'b')
  end

  def test_example_2
    refute can_construct('aa', 'ab')
  end

  def test_example_3
    assert can_construct('aa', 'aab')
  end

  def test_exact_match
    assert can_construct('abc', 'cba')
  end

  def test_empty_note_is_always_possible
    assert can_construct('', 'xyz')
  end

  def test_magazine_shorter_than_note
    refute can_construct('aaaa', 'aaa')
  end

  def test_repeated_letter_counts
    assert can_construct('aab', 'baa')
    refute can_construct('aab', 'ab')
  end
end
