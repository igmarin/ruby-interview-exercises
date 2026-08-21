# Minimum Size Subarray Sum

- **Difficulty:** medium
- **Pattern:** sliding-window
- **Reference:** [LeetCode 209](https://leetcode.com/problems/minimum-size-subarray-sum/)

## Problem

Given an array of positive integers `nums` and a positive integer `target`, return the minimal length of a contiguous subarray whose sum is greater than or equal to `target`. If no such subarray exists, return `0`.

## Function signature

```ruby
def min_sub_array_len(target, nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `target = 7, nums = [2, 3, 1, 2, 4, 3]` | `2` |
| `target = 4, nums = [1, 4, 4]` | `1` |
| `target = 11, nums = [1, 1, 1, 1, 1, 1, 1, 1]` | `0` |

## Constraints

- `1 <= target <= 10^9`
- `1 <= nums.length <= 10^5`
- `1 <= nums[i] <= 10^4`

## Multi-part prompt

1. Check every subarray sum. Too slow.
2. Expand a right pointer, adding into a window sum. While the sum is `>= target`, record the length and shrink from the left.
3. Why does this only work because all values are positive?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Two indices over one `Array`; the window never stores a copy of the slice.
- Initialize the answer to `Float::INFINITY` or `nums.length + 1`, then convert a never-updated value to `0`.
- `each_with_index` can drive the right pointer.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
