# Subarray Sum Equals K

- **Difficulty:** medium
- **Pattern:** hash-maps
- **Reference:** [LeetCode 560](https://leetcode.com/problems/subarray-sum-equals-k/)

## Problem

Given an array of integers `nums` and an integer `k`, return the number of contiguous subarrays whose elements sum to `k`.

## Function signature

```ruby
def subarray_sum(nums, k)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 1, 1], k = 2` | `2` |
| `nums = [1, 2, 3], k = 3` | `2` |

## Constraints

- `1 <= nums.length <= 2 * 10^4`
- `-1000 <= nums[i] <= 1000`
- `-10^7 <= k <= 10^7`

## Multi-part prompt

1. Brute force every `i..j` range and sum it. What is the time complexity?
2. Walk the array once, keep a running prefix sum, and store how many times each prefix has appeared in a hash map. For the current prefix `sum`, the number of subarrays ending here that total `k` is the count of prefixes equal to `sum - k`.
3. Why must the map start with `{0 => 1}`?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)` for prefix frequencies.
- `each` with a running total — no need to store the full prefix array.
- Negative numbers mean a sliding window of positive sums will not work; the hash is required.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
