# Clone Graph

- **Difficulty:** medium
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 133](https://leetcode.com/problems/clone-graph/)

## Problem

Given a reference to a node in a connected undirected graph, return a deep copy of the graph.

Each node has an integer `val` and a list of neighboring nodes. Node values are unique.

If the given node is `nil`, return `nil`.

## Function signature

```ruby
class Node
  attr_accessor :val, :neighbors

  def initialize(val = 0, neighbors = nil)
    @val = val
    @neighbors = neighbors || []
  end
end

def clone_graph(node)
  # your implementation here
end
```

## Examples

| Input (adjacency list, 1-indexed values) | Output |
|------------------------------------------|--------|
| `[[2, 4], [1, 3], [2, 4], [1, 3]]` | a new graph with the same adjacency |
| `[[]]` | a single node with no neighbors |
| `[]` | `nil` |

## Constraints

- The number of nodes is in the range `[0, 100]`.
- `1 <= Node.val <= 100`
- `Node.val` is unique for each node.
- There are no repeated edges and no self-loops.
- The graph is connected; every node can be reached from the given node.

## Multi-part prompt

1. Walk the graph with BFS or DFS. Why do you need a hash map from original node to clone?
2. When you first see a node, create its clone and store the mapping, then copy neighbors by looking up (or creating) their clones.
3. How would you prove the result is a deep copy (new objects, same structure)?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash` keyed by the original `Node` (object identity) mapping to the clone.
- An `Array` queue for BFS; recursion is fine for `n <= 100`.
- Do not key the map only by `val` in the interview explanation until you mention values are unique — object identity is the safer default.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
