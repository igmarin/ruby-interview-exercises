# Longest Consecutive Sequence

- **Difficulty:** hard
- **Pattern:** hash-maps
- **Reference:** LeetCode 128 — https://leetcode.com/problems/longest-consecutive-sequence/

## Problem

Given an unsorted array of integers `nums`, return the length of the longest consecutive elements sequence. You must write an algorithm that runs in O(n) time.

## Function signature

```ruby
def longest_consecutive(nums)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [100, 4, 200, 1, 3, 2]` | `4` |
| `nums = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]` | `9` |
| `nums = []` | `0` |

## Constraints

- `0 <= nums.length <= 10^5`
- `-10^9 <= nums[i] <= 10^9`

## Multi-part prompt

1. First solve it by sorting the array and scanning. What is the complexity?
2. Now solve it in O(n) using a hash set. How do you avoid counting duplicates?
3. Prove the hash-set solution is O(n) even though it has nested loops, and describe how duplicates are handled.

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
