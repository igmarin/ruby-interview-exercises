# First Missing Positive

- **Difficulty:** hard
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 41](https://leetcode.com/problems/first-missing-positive/)

## Problem

Given an unsorted integer array `nums`, return the smallest missing positive integer.

You must solve it in O(n) time and O(1) extra space (you may mutate `nums`).

## Function signature

```ruby
def first_missing_positive(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 0]` | `3` |
| `[3, 4, -1, 1]` | `2` |
| `[7, 8, 9, 11, 12]` | `1` |

## Constraints

- `1 <= nums.length <= 10^5`
- `-2^31 <= nums[i] <= 2^31 - 1`

## Multi-part prompt

1. Put the numbers into a `Set` and scan `1, 2, 3, ...` until a gap. This is O(n) time but not O(1) space.
2. The answer is always in `1..n+1`. Use the array itself as a map: place value `x` at index `x - 1` when `1 <= x <= n`.
3. After the placement pass, the first index `i` where `nums[i] != i + 1` is the missing positive. If every slot matches, return `n + 1`.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Cycle-swap in place: `nums[i], nums[nums[i] - 1] = nums[nums[i] - 1], nums[i]` — watch infinite loops when duplicates sit in the wrong slot (`break` when the two values are already equal).
- Ignore non-positives and values larger than `n`.
- Ruby `Array` is 0-indexed; value `1` belongs at index `0`.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
