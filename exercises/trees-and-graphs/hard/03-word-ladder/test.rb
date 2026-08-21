# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestWordLadder < Minitest::Test
  def test_example
    assert_equal 5, ladder_length('hit', 'cog', %w[hot dot dog lot log cog])
  end

  def test_no_path
    assert_equal 0, ladder_length('hit', 'cog', %w[hot dot dog lot log])
  end

  def test_begin_equals_end
    assert_equal 1, ladder_length('a', 'a', %w[a])
  end

  def test_single_step
    assert_equal 2, ladder_length('hot', 'dot', %w[hot dot])
  end
end
