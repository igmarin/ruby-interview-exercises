# Binary Tree Maximum Path Sum

- **Difficulty:** hard
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 124 — Binary Tree Maximum Path Sum](https://leetcode.com/problems/binary-tree-maximum-path-sum/)

## Problem

A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once.

Given the `root` of a binary tree, return the maximum path sum.

## Function signature

```ruby
def max_path_sum(root)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3]` | `6` |
| `[-10, 9, 20, nil, nil, 15, 7]` | `42` |
| `[-3]` | `-3` |

## Constraints

- The number of nodes in the tree is in the range `[1, 3 * 10^4]`.
- `-1000 <= Node.val <= 1000`

## Multi-part prompt

1. Use a post-order DFS helper that returns the maximum gain from each subtree.
2. Track a global maximum against local paths.
3. Handle negative node values correctly.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- Post-order DFS
- Global vs local state

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
