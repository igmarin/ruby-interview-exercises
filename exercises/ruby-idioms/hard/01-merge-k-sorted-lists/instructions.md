# Merge k Sorted Lists

- **Difficulty:** hard
- **Pattern:** ruby-idioms
- **Reference:** [LeetCode 23](https://leetcode.com/problems/merge-k-sorted-lists/)

## Problem

You are given an array of `k` sorted integer arrays. Merge them into a single sorted array that contains every element exactly once, preserving ascending order.

## Function signature

```ruby
def merge_k_lists(lists)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[[1, 4, 5], [1, 3, 4], [2, 6]]` | `[1, 1, 2, 3, 4, 4, 5, 6]` |
| `[]` | `[]` |
| `[[], [1, 3], [2]]` | `[1, 2, 3]` |
| `[[-5, 1], [-1, 0, 2]]` | `[-5, -1, 0, 1, 2]` |

## Constraints

- Each inner list is already sorted in ascending order.
- The total number of elements is at least `0`.
- `lists` itself may be empty, and inner lists may be empty.

## Multi-part prompt

1. Start by merging two lists at a time. What is the time complexity? How does it depend on `k`?
2. Implement a custom min-heap backed by an `Array` and use it to produce the next smallest value in `O(log k)` time.
3. Compare the heap approach to `lists.flatten.sort`. When is the heap worth the extra code?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Array#shift`, custom heap, sort trade-offs.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
