# Number of Islands

- **Difficulty:** medium
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 200 — Number of Islands](https://leetcode.com/problems/number-of-islands/)

## Problem

Given an `m x n` 2D binary grid `grid` which represents a map of `'1'`s (land) and `'0'`s (water), return the number of islands.

An island is surrounded by water and is formed by connecting adjacent lands horizontally or vertically.

## Function signature

```ruby
def num_islands(grid)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[['1','1','1','1','0'],['1','1','0','1','0'],['1','1','0','0','0'],['0','0','0','0','1']]` | `2` |
| `[['1','1','0','0','0'],['1','1','0','0','0'],['0','0','1','0','0'],['0','0','0','1','1']]` | `3` |
| `[]` | `0` |

## Constraints

- `m == grid.length`
- `n == grid[i].length`
- `1 <= m, n <= 300`
- `grid[i][j]` is `'0'` or `'1'`.

## Multi-part prompt

1. Implement the island count using DFS.
2. Implement the island count using BFS.
3. Compare mutating the grid in place against using a separate `visited` set.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- 2D grid traversal
- DFS / BFS
- In-place mutation vs `Set`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
