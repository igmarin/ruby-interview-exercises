# Intersection of Two Arrays

- **Difficulty:** basic
- **Pattern:** hash-maps
- **Reference:** LeetCode 349 — https://leetcode.com/problems/intersection-of-two-arrays/

## Problem

Given two integer arrays `nums1` and `nums2`, return an array of their intersection. Each element in the result must be unique, and you may return the result in any order.

## Function signature

```ruby
def intersection(nums1, nums2)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums1 = [1, 2, 2, 1], nums2 = [2, 2]` | `[2]` |
| `nums1 = [4, 9, 5], nums2 = [9, 4, 9, 8, 4]` | `[9, 4]` (in any order) |

## Constraints

- `1 <= nums1.length, nums2.length <= 1000`
- `0 <= nums1[i], nums2[i] <= 1000`

## Multi-part prompt

1. Implement a solution using a hash set.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Set`, `Hash#key?`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
