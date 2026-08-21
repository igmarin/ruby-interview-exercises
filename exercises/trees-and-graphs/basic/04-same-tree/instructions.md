# Same Tree

- **Difficulty:** basic
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 100](https://leetcode.com/problems/same-tree/)

## Problem

Given the roots of two binary trees `p` and `q`, return `true` if the trees are structurally identical and their nodes have the same values.

## Function signature

```ruby
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_same_tree(p, q)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `p = [1, 2, 3], q = [1, 2, 3]` | `true` |
| `p = [1, 2], q = [1, nil, 2]` | `false` |
| `p = [1, 2, 1], q = [1, 1, 2]` | `false` |

## Constraints

- The number of nodes in both trees is in the range `[0, 100]`.
- `-10^4 <= Node.val <= 10^4`

## Multi-part prompt

1. Recurse: two nodes match if both are `nil`, or both exist with equal `val` and matching left and right subtrees.
2. Write the same check as an iterative BFS/DFS that walks both trees in lockstep.
3. What happens if one tree is empty and the other is not?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Recursion is idiomatic here; the call stack is the frontier.
- Compare `nil` first so you never call `val` on a missing node.
- An iterative version can use an `Array` as a queue of `[node_p, node_q]` pairs.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
