# Merge Sorted Array

- **Difficulty:** basic
- **Pattern:** two-pointers
- **Reference:** [LeetCode 88](https://leetcode.com/problems/merge-sorted-array/)

## Problem

You are given two sorted integer arrays. The first array has enough trailing space to hold all elements of the second array. Merge the second array into the first one in place so that the first array remains sorted.

## Function signature

```ruby
def merge(nums1, m, nums2, n)
  # your implementation here
end
```

## Examples

| Input                                          | Output (after mutating `nums1`) |
|------------------------------------------------|---------------------------------|
| `nums1 = [1, 2, 3, 0, 0, 0]`, `m = 3`, `nums2 = [2, 5, 6]`, `n = 3` | `[1, 2, 2, 3, 5, 6]` |
| `nums1 = [1]`, `m = 1`, `nums2 = []`, `n = 0` | `[1]` |
| `nums1 = [0]`, `m = 0`, `nums2 = [1]`, `n = 1` | `[1]` |

## Constraints

- `nums1.length == m + n`
- `nums2.length == n`
- `m` and `n` are non-negative.
- Both arrays are sorted in non-decreasing order.

## Multi-part prompt

1. Fill `nums1` from the back using three pointers so that no extra array is required.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Working with `Array` mutation in place.
- Three-pointer invariants: track the end of each array and the next write position.
- Avoiding a copy by merging from largest to smallest.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
