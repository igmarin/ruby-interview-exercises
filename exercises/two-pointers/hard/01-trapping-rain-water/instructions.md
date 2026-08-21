# Trapping Rain Water

- **Difficulty:** hard
- **Pattern:** two-pointers
- **Reference:** [LeetCode 42](https://leetcode.com/problems/trapping-rain-water/)

## Problem

Given an array of non-negative integers representing an elevation map where the width of each bar is `1`, compute how much water the structure can trap after raining.

## Function signature

```ruby
module TrappingRainWater
  def self.trap(height)
    # your implementation here
  end
end
```

The method is scoped inside a module because `trap` is a built-in Ruby `Kernel` method; keeping it inside `TrappingRainWater.trap` avoids shadowing system behavior.

## Examples

| Input                                          | Output |
|------------------------------------------------|--------|
| `[0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]`        | `6`    |
| `[4, 2, 0, 3, 2, 5]`                          | `9`    |
| `[0, 0, 0]`                                    | `0`    |

## Constraints

- The array length is at most `2 * 10^4`.
- Each height is non-negative and at most `10^5`.

## Multi-part prompt

1. First describe a brute-force approach that computes the trapped water at each index independently.
2. Implement an O(n) time, O(1) extra space two-pointer solution.
3. Explain why no extra arrays are needed — what information do the two pointers carry as they move inward?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `while` loops and two-pointer invariants.
- Tracking running `left_max` and `right_max` values.
- Understanding when it is safe to process one side without needing the other.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
