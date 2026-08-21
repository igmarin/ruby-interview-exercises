# Contains Duplicate II

- **Difficulty:** basic
- **Pattern:** sliding-window
- **Reference:** [LeetCode 219](https://leetcode.com/problems/contains-duplicate-ii/)

## Problem

Given an integer array `nums` and an integer `k`, return `true` if there are two distinct indices `i` and `j` in the array such that `nums[i] == nums[j]` and the absolute difference between `i` and `j` is at most `k`.

## Function signature

```ruby
def contains_nearby_duplicate(nums, k)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 2, 3, 1], k = 3` | `true` |
| `nums = [1, 0, 1, 1], k = 1` | `true` |
| `nums = [1, 2, 3, 1, 2, 3], k = 2` | `false` |

## Constraints

- `1 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`
- `0 <= k <= 10^5`

## Multi-part prompt

1. Use a sliding window of the most recent `k` values and a `Hash` or `Set` to detect a duplicate in `O(n)` time.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Store the most recent index for each value in a `Hash`.
- Iterate with `each_with_index` to keep track of the current position.
- Update the window by comparing the current index with the previously stored index.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
