# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

def build_tree(values)
  return nil if values.nil? || values.empty?

  root = TreeNode.new(values[0])
  queue = [root]
  i = 1

  while !queue.empty? && i < values.length
    node = queue.shift

    if i < values.length && !values[i].nil?
      node.left = TreeNode.new(values[i])
      queue << node.left
    end
    i += 1

    if i < values.length && !values[i].nil?
      node.right = TreeNode.new(values[i])
      queue << node.right
    end
    i += 1
  end

  root
end


class TestPathSum < Minitest::Test
  def test_example
    root = build_tree([5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1])
    assert has_path_sum(root, 22)
  end

  def test_simple
    assert has_path_sum(build_tree([1, 2, 3]), 3)
  end

  def test_no_path
    refute has_path_sum(build_tree([1, 2]), 0)
  end

  def test_empty
    refute has_path_sum(build_tree([]), 0)
  end
end
