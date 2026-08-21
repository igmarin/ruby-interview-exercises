# Path Sum

- **Difficulty:** basic
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 112 — Path Sum](https://leetcode.com/problems/path-sum/)

## Problem

Given the `root` of a binary tree and an integer `target_sum`, return `true` if the tree has a root-to-leaf path such that adding up all the values along the path equals `target_sum`.

Return `false` if no such path exists.

## Function signature

```ruby
def has_path_sum(root, target_sum)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[5, 4, 8, 11, nil, 13, 4, 7, 2, nil, nil, nil, 1]`, `target_sum = 22` | `true` |
| `[1, 2, 3]`, `target_sum = 5` | `true` |
| `[1, 2]`, `target_sum = 0` | `false` |

## Constraints

- The number of nodes in the tree is in the range `[0, 5000]`.
- `-1000 <= Node.val <= 1000`
- `-1000 <= target_sum <= 1000`

## Multi-part prompt

1. Use a depth-first search that subtracts the current node value from `target_sum` as you descend.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `TreeNode` class
- Recursion and short-circuit evaluation

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
