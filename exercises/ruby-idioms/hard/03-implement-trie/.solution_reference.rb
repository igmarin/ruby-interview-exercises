# frozen_string_literal: true

class Trie
  def initialize
    @root = {}
  end

  def insert(word)
    node = @root
    word.each_char do |ch|
      node[ch] ||= {}
      node = node[ch]
    end
    node[:end] = true
  end

  def search(word)
    node = walk(word)
    !node.nil? && node[:end] == true
  end

  def starts_with(prefix)
    !walk(prefix).nil?
  end

  private

  def walk(str)
    node = @root
    str.each_char do |ch|
      return nil unless node.key?(ch)

      node = node[ch]
    end
    node
  end
end
