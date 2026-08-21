# frozen_string_literal: true

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end


class Codec
  # @param [TreeNode] root
  # @return [String]
  def serialize(root)
    return '' if root.nil?

    result = []
    queue = [root]

    until queue.empty?
      node = queue.shift

      if node
        result << node.val.to_s
        queue << node.left
        queue << node.right
      else
        result << 'null'
      end
    end

    result.join(',')
  end

  # @param [String] data
  # @return [TreeNode]
  def deserialize(data)
    return nil if data.nil? || data.empty?

    values = data.split(',')
    return nil if values.empty? || values[0] == 'null'

    root = TreeNode.new(values[0].to_i)
    queue = [root]
    i = 1

    until queue.empty? || i >= values.length
      node = queue.shift

      if values[i] != 'null'
        node.left = TreeNode.new(values[i].to_i)
        queue << node.left
      end
      i += 1

      break if i >= values.length

      if values[i] != 'null'
        node.right = TreeNode.new(values[i].to_i)
        queue << node.right
      end
      i += 1
    end

    root
  end
end
