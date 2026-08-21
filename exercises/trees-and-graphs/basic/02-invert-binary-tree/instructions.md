# Invert Binary Tree

- **Difficulty:** basic
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 226 — Invert Binary Tree](https://leetcode.com/problems/invert-binary-tree/)

## Problem

Given the `root` of a binary tree, invert the tree, and return its root.

To invert a binary tree, swap the left and right child of every node.

## Function signature

```ruby
def invert_tree(root)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[2, 1, 3]` | `[2, 3, 1]` |
| `[]` | `nil` |
| `[1, 2, 3, nil, 5]` | `[1, 3, 2, 5]` |

## Constraints

- The number of nodes in the tree is in the range `[0, 100]`.
- `-100 <= Node.val <= 100`

## Multi-part prompt

1. Recursively invert every left and right subtree.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- Recursion and parallel assignment

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
