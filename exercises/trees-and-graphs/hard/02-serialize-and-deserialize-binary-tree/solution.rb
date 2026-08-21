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
  def serialize(root)
    raise NotImplementedError, 'Implement serialize'
  end

  def deserialize(data)
    raise NotImplementedError, 'Implement deserialize'
  end
end
