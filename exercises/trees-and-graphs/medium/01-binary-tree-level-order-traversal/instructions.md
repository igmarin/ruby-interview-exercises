# Binary Tree Level Order Traversal

- **Difficulty:** medium
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 102 — Binary Tree Level Order Traversal](https://leetcode.com/problems/binary-tree-level-order-traversal/)

## Problem

Given the `root` of a binary tree, return the level order traversal of its nodes' values. (i.e., from left to right, level by level).

## Function signature

```ruby
def level_order(root)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[3, 9, 20, nil, nil, 15, 7]` | `[[3], [9, 20], [15, 7]]` |
| `[1]` | `[[1]]` |
| `[]` | `[]` |

## Constraints

- The number of nodes in the tree is in the range `[0, 2000]`.
- `-1000 <= Node.val <= 1000`

## Multi-part prompt

1. Implement a BFS using a queue and track each level explicitly.
2. Implement a DFS that tracks depth and appends the node value to the correct level.
3. Compare recursion vs iteration trade-offs in Ruby for this problem.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- `Array` used as a queue
- Recursion vs iteration

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
