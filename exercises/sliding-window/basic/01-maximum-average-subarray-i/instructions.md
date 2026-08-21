# Maximum Average Subarray I

- **Difficulty:** basic
- **Pattern:** sliding-window
- **Reference:** [LeetCode 643](https://leetcode.com/problems/maximum-average-subarray-i/)

## Problem

Given an integer array `nums` and an integer `k`, find a contiguous subarray of length `k` that has the maximum average value. Return that maximum average.

## Function signature

```ruby
def find_max_average(nums, k)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 12, -5, -6, 50, 3], k = 4` | `12.75` |
| `nums = [5], k = 1` | `5.0` |
| `nums = [-1, -2, -3, -4], k = 2` | `-1.5` |

## Constraints

- `1 <= nums.length <= 10^5`
- `0 <= nums[i] <= 10^4` per LeetCode; this exercise also accepts negatives
- `1 <= k <= nums.length`

## Multi-part prompt

1. Implement a single-pass sliding-window sum approach to compute the maximum average in `O(n)` time and `O(1)` extra space.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Track a running window sum and update it with `window_sum += nums[i] - nums[i - k]`.
- Use `Array#take` or index ranges to initialize the first window.
- Convert the final max sum to a `Float` with `to_f` before dividing.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
