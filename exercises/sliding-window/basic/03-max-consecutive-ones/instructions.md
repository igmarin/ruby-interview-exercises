# Max Consecutive Ones

- **Difficulty:** basic
- **Pattern:** sliding-window
- **Reference:** [LeetCode 485](https://leetcode.com/problems/max-consecutive-ones/)

## Problem

Given a binary array `nums`, return the maximum number of consecutive `1`s in the array.

## Function signature

```ruby
def find_max_consecutive_ones(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 1, 0, 1, 1, 1]` | `3` |
| `[1, 0, 1, 1, 0, 1]` | `2` |

## Constraints

- `1 <= nums.length <= 10^5`
- `nums[i]` is either `0` or `1`.

## Multi-part prompt

1. Scan left to right, grow a run of ones, reset the run on a zero, and keep a global maximum.
2. Describe the same idea as a window whose right edge always advances and whose left edge jumps to `i + 1` when `nums[i]` is `0`.
3. What should you return if the array is all zeros? All ones?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- A single pass with two integers (`current`, `best`) is enough — no extra `Array`.
- `each` over `nums` avoids index noise when you do not need positions.
- Avoid `nums.join.split('0').map(&:size).max` in an interview unless you can state its extra allocations.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
