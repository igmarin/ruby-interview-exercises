# Container With Most Water

- **Difficulty:** medium
- **Pattern:** two-pointers
- **Reference:** [LeetCode 11](https://leetcode.com/problems/container-with-most-water/)

## Problem

You are given an integer array `height` of length `n`. There are `n` vertical lines drawn such that the two endpoints of the `i`th line are `(i, 0)` and `(i, height[i])`.

Find two lines that, together with the x-axis, form a container that holds the most water. Return the maximum amount of water the container can store.

You may not slant the container.

## Function signature

```ruby
def max_area(height)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 8, 6, 2, 5, 4, 8, 3, 7]` | `49` |
| `[1, 1]` | `1` |

## Constraints

- `2 <= height.length <= 10^5`
- `0 <= height[i] <= 10^4`

## Multi-part prompt

1. Try every pair of indices. Too slow for `10^5` lines.
2. Start with pointers at both ends. The area is `min(height[left], height[right]) * (right - left)`. Move the pointer at the shorter line inward, because width only shrinks and a taller partner is the only way to beat the current area.
3. Why is it safe to never move the taller pointer first?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Two integer indices; no extra collections.
- `while left < right` is clearer than a `for` over a shrinking range.
- Watch zero-height lines: they produce area `0` but must not crash.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
