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


def trees_equal?(a, b)
  return true if a.nil? && b.nil?
  return false if a.nil? || b.nil?

  a.val == b.val &&
    trees_equal?(a.left, b.left) &&
    trees_equal?(a.right, b.right)
end


class TestInvertBinaryTree < Minitest::Test
  def test_example
    assert trees_equal?(build_tree([2, 3, 1]), invert_tree(build_tree([2, 1, 3])))
  end

  def test_empty
    assert_nil invert_tree(build_tree([]))
  end

  def test_single_node
    assert trees_equal?(build_tree([1]), invert_tree(build_tree([1])))
  end

  def test_unbalanced
    original = TreeNode.new(1,
                            TreeNode.new(2, nil, TreeNode.new(5)),
                            TreeNode.new(3))
    expected = TreeNode.new(1,
                            TreeNode.new(3),
                            TreeNode.new(2, TreeNode.new(5), nil))
    assert trees_equal?(expected, invert_tree(original))
  end
end
