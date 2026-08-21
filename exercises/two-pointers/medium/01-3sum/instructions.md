# 3Sum

- **Difficulty:** medium
- **Pattern:** two-pointers
- **Reference:** [LeetCode 15](https://leetcode.com/problems/3sum/)

## Problem

Given an array of integers, find all unique triplets `[a, b, c]` in the array such that `a + b + c == 0`.

## Function signature

```ruby
def three_sum(nums)
  # your implementation here
end
```

## Examples

| Input                            | Output                          |
|----------------------------------|---------------------------------|
| `[-1, 0, 1, 2, -1, -4]`          | `[[-1, -1, 2], [-1, 0, 1]]`    |
| `[0, 1, 1]`                      | `[]`                            |
| `[0, 0, 0]`                      | `[[0, 0, 0]]`                   |

## Constraints

- The array length is at most `3000`.
- Each element may be negative, zero, or positive.
- The output must not contain duplicate triplets.

## Multi-part prompt

1. Sort the array and fix one element, then use two pointers to find the remaining pair.
2. Skip duplicate fixed elements and duplicate left/right values to avoid repeating triplets.
3. Discuss why sorting helps and state the resulting O(n²) time bound.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Array#sort!` to prepare the input for a two-pointer scan.
- `while` loops and left/right pointer invariants inside the outer loop.
- Skipping duplicates with simple index comparisons.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
