# Top K Frequent Elements

- **Difficulty:** medium
- **Pattern:** hash-maps
- **Reference:** LeetCode 347 — https://leetcode.com/problems/top-k-frequent-elements/

## Problem

Given an integer array `nums` and an integer `k`, return the `k` most frequent elements. You may return the answer in any order.

## Function signature

```ruby
def top_k_frequent(nums, k)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 1, 1, 2, 2, 3], k = 2` | `[1, 2]` (in any order) |
| `nums = [1], k = 1` | `[1]` |

## Constraints

- `1 <= nums.length <= 10^5`
- `-10^4 <= nums[i] <= 10^4`
- `k` is in the range `[1, the number of unique elements in the array]`.
- The answer is guaranteed to be unique.

## Multi-part prompt

1. Count frequencies with a hash and sort by frequency. What is the complexity?
2. Optimize with bucket sort or a heap. What changes in Ruby?
3. When `k` is close to the number of unique elements, how does the best approach change?

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)`, `sort_by`, `each_with_object`

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
