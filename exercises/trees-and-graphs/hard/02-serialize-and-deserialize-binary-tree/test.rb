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


class TestSerializeAndDeserializeBinaryTree < Minitest::Test
  def test_round_trip_example
    codec = Codec.new
    root = build_tree([1, 2, 3])
    assert trees_equal?(root, codec.deserialize(codec.serialize(root)))
  end

  def test_round_trip_with_nil
    codec = Codec.new
    root = build_tree([1, 2, 3, nil, nil, 4, 5])
    assert trees_equal?(root, codec.deserialize(codec.serialize(root)))
  end

  def test_empty
    codec = Codec.new
    assert_equal '', codec.serialize(build_tree([]))
    assert_nil codec.deserialize(codec.serialize(build_tree([])))
  end

  def test_single
    codec = Codec.new
    root = build_tree([5])
    assert trees_equal?(root, codec.deserialize(codec.serialize(root)))
  end
end
