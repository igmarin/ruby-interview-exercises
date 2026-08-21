# Product of Array Except Self

- **Difficulty:** medium
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 238](https://leetcode.com/problems/product-of-array-except-self/)

## Problem

Given an integer array `nums`, return an array `answer` such that `answer[i]` is the product of all elements of `nums` except `nums[i]`.

You must solve it without using division and in O(n) time. The follow-up is to use only constant extra space besides the output array.

## Function signature

```ruby
def product_except_self(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `[1, 2, 3, 4]` | `[24, 12, 8, 6]` |
| `[-1, 1, 0, -3, 3]` | `[0, 0, 9, 0, 0]` |

## Constraints

- `2 <= nums.length <= 10^5`
- `-30 <= nums[i] <= 30`
- The product of any prefix or suffix of `nums` is guaranteed to fit in a 32-bit integer.

## Multi-part prompt

1. For each index, multiply every other value. Too slow — why?
2. Build a prefix-product array and a suffix-product array, then `answer[i] = prefix[i] * suffix[i]`.
3. Reuse the output array: first write left products, then multiply a running right product from the end.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Pre-size with `Array.new(n, 1)` so you never `<<` in an inner loop.
- Integer overflow is not a Ruby concern the way it is in Java; still reason about it as an interviewer would.
- Division is forbidden even when no zeros are present — the point is the prefix/suffix idea.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
