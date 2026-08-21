# Maximum Depth of Binary Tree

- **Difficulty:** basic
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 104 — Maximum Depth of Binary Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree/)

## Problem

Given the `root` of a binary tree, return its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

## Function signature

```ruby
def max_depth(root)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[3, 9, 20, nil, nil, 15, 7]` | `3` |
| `[]` | `0` |
| `[1]` | `1` |

## Constraints

- The number of nodes in the tree is in the range `[0, 10^4]`.
- `-100 <= Node.val <= 100`

## Multi-part prompt

1. Implement a recursive solution that computes depth at every node.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- Recursion and base cases

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
