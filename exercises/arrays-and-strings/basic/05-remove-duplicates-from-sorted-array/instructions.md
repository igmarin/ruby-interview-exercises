# Remove Duplicates from Sorted Array

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 26](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

## Problem

Given a sorted integer array `nums`, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.

Return the number of unique elements.

## Function signature

```ruby
def remove_duplicates(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 1, 2]` | `2` with `nums` beginning `[1, 2]` |
| `[0, 0, 1, 1, 1, 2, 2, 3, 3, 4]` | `5` with `nums` beginning `[0, 1, 2, 3, 4]` |

## Constraints

- `0 <= nums.length <= 3 * 10^4`
- `-100 <= nums[i] <= 100`
- `nums` is sorted in non-decreasing order.

## Multi-part prompt

1. Keep a write pointer and copy each new unique value in front of it, returning the new length.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use in-place array mutation to overwrite earlier duplicates.
- Compare the current element with the previous one using indexing.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
