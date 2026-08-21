# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

class TestImplementTrie < Minitest::Test
  def test_example_sequence
    trie = Trie.new
    trie.insert('apple')
    assert trie.search('apple')
    refute trie.search('app')
    assert trie.starts_with('app')
    trie.insert('app')
    assert trie.search('app')
  end

  def test_missing_word
    trie = Trie.new
    trie.insert('hello')
    refute trie.search('world')
    refute trie.starts_with('wor')
  end

  def test_prefix_is_not_word
    trie = Trie.new
    trie.insert('hello')
    assert trie.starts_with('hell')
    refute trie.search('hell')
  end

  def test_shared_prefixes
    trie = Trie.new
    trie.insert('app')
    trie.insert('apple')
    trie.insert('apply')
    assert trie.search('app')
    assert trie.search('apple')
    assert trie.search('apply')
    refute trie.search('ap')
    assert trie.starts_with('ap')
  end

  def test_single_letter
    trie = Trie.new
    trie.insert('a')
    assert trie.search('a')
    assert trie.starts_with('a')
    refute trie.search('b')
  end
end
