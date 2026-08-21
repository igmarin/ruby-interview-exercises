# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestGroupAnagrams < Minitest::Test
  def sorted_groups(groups)
    groups.map(&:sort).sort
  end

  def test_example_1
    expected = [%w[ate eat tea], %w[bat], %w[nat tan]]
    actual = group_anagrams(%w[eat tea tan ate nat bat])
    assert_equal expected, sorted_groups(actual)
  end

  def test_example_2
    assert_equal [['']], sorted_groups(group_anagrams(['']))
  end

  def test_example_3
    assert_equal [['a']], sorted_groups(group_anagrams(['a']))
  end

  def test_no_anagrams
    assert_equal [['a'], ['b'], ['c']], sorted_groups(group_anagrams(%w[a b c]))
  end
end
