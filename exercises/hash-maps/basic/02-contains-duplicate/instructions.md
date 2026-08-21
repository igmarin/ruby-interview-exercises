# Contains Duplicate

- **Difficulty:** basic
- **Pattern:** hash-maps
- **Reference:** LeetCode 217 — https://leetcode.com/problems/contains-duplicate/

## Problem

Given an integer array `nums`, return `true` if any value appears at least twice in the array, and `false` if every element is distinct.

## Function signature

```ruby
def contains_duplicate(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3, 1]` | `true` |
| `[1, 2, 3, 4]` | `false` |
| `[1, 1, 1, 3, 3, 4, 3, 2, 4, 2]` | `true` |

## Constraints

- `1 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`

## Multi-part prompt

1. Implement a linear-time solution using a hash set or hash map.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Set`, `Hash#key?`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
