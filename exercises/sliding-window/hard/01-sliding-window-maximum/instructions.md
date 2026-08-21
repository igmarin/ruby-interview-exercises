# Sliding Window Maximum

- **Difficulty:** hard
- **Pattern:** sliding-window
- **Reference:** [LeetCode 239](https://leetcode.com/problems/sliding-window-maximum/)

## Problem

Given an integer array `nums` and an integer `k`, return the maximum value in each sliding window of size `k` as it moves from the left of the array to the right. The output should contain one value for every valid window position.

## Function signature

```ruby
def max_sliding_window(nums, k)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `nums = [1, 3, -1, -3, 5, 3, 6, 7], k = 3` | `[3, 3, 5, 5, 6, 7]` |
| `nums = [1], k = 1` | `[1]` |
| `nums = [1, -1], k = 1` | `[1, -1]` |

## Constraints

- `1 <= nums.length <= 10^5`
- `-10^4 <= nums[i] <= 10^4`
- `1 <= k <= nums.length`

## Multi-part prompt

1. **Naive window scan:** for each window position, scan all `k` elements to find the maximum. What is the time complexity?
2. **Monotonic deque:** maintain a deque of indices so that the corresponding values are in decreasing order. Remove indices that slide out of the window from the front, and remove indices whose values are smaller than the new element from the back. Why does this give the answer in `O(n)`?
3. **Prove the O(n) bound:** argue that every index is pushed onto the deque exactly once and popped at most once, so the total number of deque operations is linear.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use a plain `Array` as a double-ended queue (`push`, `pop`, `shift`, `unshift`).
- Store indices in the deque, not values, so you can tell when an index leaves the window.
- Maintain the monotonic invariant with `while` loops on the back and the front of the deque.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
