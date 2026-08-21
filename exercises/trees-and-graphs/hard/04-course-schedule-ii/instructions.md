# Course Schedule II

- **Difficulty:** hard
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 210 — Course Schedule II](https://leetcode.com/problems/course-schedule-ii/)

## Problem

There are a total of `num_courses` courses to take, labeled from `0` to `num_courses - 1`.

You are given an array `prerequisites` where `prerequisites[i] = [a, b]` indicates that you must take course `b` before course `a`.

Return the ordering of courses you should take to finish all courses. If there are many valid answers, return any of them. If it is impossible, return an empty array.

## Function signature

```ruby
def find_order(num_courses, prerequisites)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `num_courses = 2, prerequisites = [[1, 0]]` | `[0, 1]` |
| `num_courses = 4, prerequisites = [[1, 0], [2, 0], [3, 1], [3, 2]]` | `[0, 1, 2, 3]` |
| `num_courses = 2, prerequisites = [[1, 0], [0, 1]]` | `[]` |

## Constraints

- `1 <= num_courses <= 2000`
- `0 <= prerequisites.length <= num_courses * (num_courses - 1)`
- `prerequisites[i].length == 2`
- `0 <= a_i, b_i < num_courses`
- All the pairs `prerequisites[i]` are unique.

## Multi-part prompt

1. Implement Kahn's algorithm.
2. Implement a DFS post-order topological sort.
3. Return an empty array for impossible schedules.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash` / `Array` adjacency lists
- Kahn's algorithm
- Topological ordering

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
