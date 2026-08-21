# frozen_string_literal: true

class Node
  attr_accessor :val, :neighbors

  def initialize(val = 0, neighbors = nil)
    @val = val
    @neighbors = neighbors || []
  end
end

# @param [Node, nil] node
# @return [Node, nil]
def clone_graph(node)
  return nil if node.nil?

  clones = { node => Node.new(node.val) }
  queue = [node]

  until queue.empty?
    current = queue.shift
    current.neighbors.each do |neighbor|
      unless clones.key?(neighbor)
        clones[neighbor] = Node.new(neighbor.val)
        queue << neighbor
      end
      clones[current].neighbors << clones[neighbor]
    end
  end

  clones[node]
end
