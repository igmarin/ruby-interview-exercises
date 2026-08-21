# 4Sum

- **Difficulty:** hard
- **Pattern:** two-pointers
- **Reference:** [LeetCode 18](https://leetcode.com/problems/4sum/)

## Problem

Given an array of integers `nums` and an integer `target`, return all unique quadruplets `[a, b, c, d]` such that:

- `0 <= i, j, k, l < nums.length` and all four indices are different
- `nums[i] + nums[j] + nums[k] + nums[l] == target`

The solution set must not contain duplicate quadruplets. Each quadruplet may be returned in any inner order; tests expect each quadruplet sorted ascending and the list of quadruplets sorted lexicographically.

## Function signature

```ruby
def four_sum(nums, target)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 0, -1, 0, -2, 2], target = 0` | `[[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]]` |
| `nums = [2, 2, 2, 2, 2], target = 8` | `[[2, 2, 2, 2]]` |

## Constraints

- `1 <= nums.length <= 200`
- `-10^9 <= nums[i] <= 10^9`
- `-10^9 <= target <= 10^9`

## Multi-part prompt

1. Four nested loops are O(n^4). Sort first, then fix two numbers and run the 2-sum two-pointer scan on the remainder (O(n^3)).
2. Skip duplicate values at every level so each unique quadruplet is emitted once.
3. How does this generalize k-sum? What would you change for 3Sum vs 4Sum?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Array#sort` then two indices (`left`, `right`).
- After a hit, increment/decrement past equal values: `left += 1 while left < right && nums[left] == nums[left - 1]`.
- Ruby integers do not overflow; still mention 32-bit overflow if the interviewer asks about Java/C++.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
