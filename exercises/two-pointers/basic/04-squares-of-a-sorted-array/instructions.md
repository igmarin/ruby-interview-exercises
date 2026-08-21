# Squares of a Sorted Array

- **Difficulty:** basic
- **Pattern:** two-pointers
- **Reference:** [LeetCode 977](https://leetcode.com/problems/squares-of-a-sorted-array/)

## Problem

Given an integer array `nums` sorted in non-decreasing order, return a new array of the squares of each number, also sorted in non-decreasing order.

## Function signature

```ruby
def sorted_squares(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[-4, -1, 0, 3, 10]` | `[0, 1, 9, 16, 100]` |
| `[-7, -3, 2, 3, 11]` | `[4, 9, 9, 49, 121]` |

## Constraints

- `1 <= nums.length <= 10^4`
- `-10^4 <= nums[i] <= 10^4`
- `nums` is sorted in non-decreasing order.

## Multi-part prompt

1. Square every value and sort. What is the complexity?
2. Because the input is already sorted, the largest square is at one of the two ends. Use two pointers and fill the result from the back.
3. Why does comparing absolute values (or the squares themselves) let you skip a full sort?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Two index pointers (`left`, `right`) over a single `Array`.
- Pre-size the result with `Array.new(n)` instead of `unshift` in a loop.
- `map { |n| n * n }.sort` is correct but not the intended O(n) interview answer.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
