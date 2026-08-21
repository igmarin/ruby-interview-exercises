# Move Zeroes

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 283](https://leetcode.com/problems/move-zeroes/)

## Problem

Given an integer array `nums`, move all `0`s to the end of it while maintaining the relative order of the non-zero elements.

The operation must be performed in-place.

## Function signature

```ruby
def move_zeroes(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[0, 1, 0, 3, 12]` | `[1, 3, 12, 0, 0]` |
| `[0]` | `[0]` |

## Constraints

- `1 <= nums.length <= 10^4`
- `-2^31 <= nums[i] <= 2^31 - 1`

## Multi-part prompt

1. Move the non-zero values to the front of the array and fill the remaining positions with zeroes, without using an extra array.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Modify the array in place with index assignment.
- Track the next write position with a pointer.
- Use `Array#each_with_index` to iterate while updating a cursor.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
