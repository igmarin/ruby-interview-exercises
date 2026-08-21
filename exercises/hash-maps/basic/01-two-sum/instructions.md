# Two Sum

- **Difficulty:** basic
- **Pattern:** hash-maps
- **Reference:** LeetCode 1 — https://leetcode.com/problems/two-sum/

## Problem

Given an array of integers `nums` and an integer `target`, return the indices of the two numbers whose values add up to `target`. You may assume each input has exactly one solution, and you may not use the same element twice. The answer may be returned in any order.

## Function signature

```ruby
def two_sum(nums, target)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [2, 7, 11, 15], target = 9` | `[0, 1]` |
| `nums = [3, 2, 4], target = 6` | `[1, 2]` |
| `nums = [3, 3], target = 6` | `[0, 1]` |

## Constraints

- `2 <= nums.length <= 10^4`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`
- Exactly one valid answer exists.

## Multi-part prompt

1. Implement a linear-time solution using a hash map.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash`, `each_with_index`, `key?`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
