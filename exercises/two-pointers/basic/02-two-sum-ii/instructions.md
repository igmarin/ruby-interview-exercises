# Two Sum II - Input Array Is Sorted

- **Difficulty:** basic
- **Pattern:** two-pointers
- **Reference:** [LeetCode 167](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

## Problem

You are given a sorted array of integers (in non-decreasing order) and a target value. Find two numbers in the array that add up to the target and return their 1-indexed positions.

## Function signature

```ruby
def two_sum(numbers, target)
  # your implementation here
end
```

## Examples

| Input                      | Output |
|----------------------------|--------|
| `[2, 7, 11, 15]`, `9`      | `[1, 2]` |
| `[2, 3, 4]`, `6`           | `[1, 3]` |
| `[-1, 0]`, `-1`            | `[1, 2]` |

## Constraints

- The array has at least two elements and at most `3 * 10^4`.
- It is sorted in non-decreasing order.
- Exactly one solution exists.

## Multi-part prompt

1. Use the sorted order to shrink the search window from both ends until the target sum is found.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `while` loops and left/right pointer invariants.
- Decision logic that uses the sorted order to move only one pointer at a time.
- Returning 1-indexed positions.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
