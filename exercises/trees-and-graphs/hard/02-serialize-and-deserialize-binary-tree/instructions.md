# Serialize and Deserialize Binary Tree

- **Difficulty:** hard
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 297 — Serialize and Deserialize Binary Tree](https://leetcode.com/problems/serialize-and-deserialize-binary-tree/)

## Problem

Design an algorithm to serialize and deserialize a binary tree.

Serialization is the process of converting a data structure or object into a bit stream of ones and zeros so that it can be stored in a file or memory buffer, or transmitted across a network. Deserialize does the reverse.

## Function signature

```ruby
class Codec
  def serialize(root)
    # your implementation here
  end

  def deserialize(data)
    # your implementation here
  end
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3]` round-trip | `[1, 2, 3]` |
| `[1, 2, 3, nil, nil, 4, 5]` round-trip | `[1, 2, 3, nil, nil, 4, 5]` |
| `[]` round-trip | `[]` |

## Constraints

- The number of nodes in the tree is in the range `[0, 10^4]`.
- `-1000 <= Node.val <= 1000`

## Multi-part prompt

1. Implement BFS level-order serialization.
2. Implement DFS pre-order serialization.
3. Handle `nil` and empty trees robustly.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- `Array` as a queue
- Edge cases with `nil`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
