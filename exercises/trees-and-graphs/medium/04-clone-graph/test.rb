# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'solution'

def build_graph(adj)
  return nil if adj.nil? || adj.empty?

  nodes = (1..adj.length).map { |val| Node.new(val) }
  adj.each_with_index do |neighbors, i|
    nodes[i].neighbors = neighbors.map { |val| nodes[val - 1] }
  end
  nodes[0]
end

def graph_to_adj(node)
  return [] if node.nil?

  seen = {}
  queue = [node]
  seen[node.val] = node

  until queue.empty?
    current = queue.shift
    current.neighbors.each do |neighbor|
      next if seen.key?(neighbor.val)

      seen[neighbor.val] = neighbor
      queue << neighbor
    end
  end

  (1..seen.length).map do |val|
    seen[val].neighbors.map(&:val).sort
  end
end

def collect_nodes(node)
  return [] if node.nil?

  seen = {}
  queue = [node]
  seen[node.object_id] = node

  until queue.empty?
    current = queue.shift
    current.neighbors.each do |neighbor|
      next if seen.key?(neighbor.object_id)

      seen[neighbor.object_id] = neighbor
      queue << neighbor
    end
  end

  seen.values
end

class TestCloneGraph < Minitest::Test
  def test_example_square
    original = build_graph([[2, 4], [1, 3], [2, 4], [1, 3]])
    cloned = clone_graph(original)

    assert_equal graph_to_adj(original), graph_to_adj(cloned)
    refute_equal original.object_id, cloned.object_id
    original_ids = collect_nodes(original).map(&:object_id)
    cloned_ids = collect_nodes(cloned).map(&:object_id)
    assert_empty original_ids & cloned_ids
  end

  def test_single_node_no_neighbors
    original = build_graph([[]])
    cloned = clone_graph(original)

    assert_equal 1, cloned.val
    assert_equal [], cloned.neighbors
    refute_equal original.object_id, cloned.object_id
  end

  def test_empty
    assert_nil clone_graph(nil)
  end

  def test_two_nodes
    original = build_graph([[2], [1]])
    cloned = clone_graph(original)

    assert_equal graph_to_adj(original), graph_to_adj(cloned)
    refute_equal original.object_id, cloned.object_id
    refute_equal original.neighbors[0].object_id, cloned.neighbors[0].object_id
  end

  def test_line_of_three
    original = build_graph([[2], [1, 3], [2]])
    cloned = clone_graph(original)

    assert_equal [[2], [1, 3], [2]], graph_to_adj(cloned)
  end
end
