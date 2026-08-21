# Course Schedule

- **Difficulty:** medium
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 207 — Course Schedule](https://leetcode.com/problems/course-schedule/)

## Problem

There are a total of `num_courses` courses you have to take, labeled from `0` to `num_courses - 1`.

You are given an array `prerequisites` where `prerequisites[i] = [a, b]` indicates that you must take course `b` before course `a`.

Return `true` if you can finish all courses. Otherwise, return `false`.

## Function signature

```ruby
def can_finish(num_courses, prerequisites)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `num_courses = 2, prerequisites = [[1, 0]]` | `true` |
| `num_courses = 2, prerequisites = [[1, 0], [0, 1]]` | `false` |
| `num_courses = 1, prerequisites = []` | `true` |

## Constraints

- `1 <= num_courses <= 2000`
- `0 <= prerequisites.length <= 5000`
- `prerequisites[i].length == 2`
- `0 <= a_i, b_i < num_courses`
- All the pairs `prerequisites[i]` are unique.

## Multi-part prompt

1. Detect a cycle in a directed graph.
2. Implement Kahn's algorithm for topological sorting.
3. Explain how prerequisites map to directed edges.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash` / `Array` adjacency lists
- Indegree tracking
- Topological sort

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
