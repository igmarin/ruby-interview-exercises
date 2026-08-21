# Minimum Window Substring

- **Difficulty:** hard
- **Pattern:** sliding-window
- **Reference:** [LeetCode 76](https://leetcode.com/problems/minimum-window-substring/)

## Problem

Given two strings `s` and `t`, return the smallest substring of `s` that covers every character in `t` (including duplicates). If no such substring exists, return the empty string `""`.

If there are multiple windows of the same smallest length, return the one that starts furthest to the left.

## Function signature

```ruby
def min_window(s, t)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `s = "ADOBECODEBANC", t = "ABC"` | `"BANC"` |
| `s = "a", t = "a"` | `"a"` |
| `s = "a", t = "aa"` | `""` |

## Constraints

- `1 <= s.length, t.length <= 10^5` in the original problem; tests stay small enough to run quickly.
- `s` and `t` consist of uppercase and lowercase English letters.
- Matching is case-sensitive: `'A'` and `'a'` are different characters.

## Multi-part prompt

1. Enumerate every substring of `s` and check whether it covers `t`. What is the complexity?
2. Expand a right pointer over `s`, tracking how many required characters are satisfied. When the window is valid, shrink from the left and record the best window.
3. Use two hashes (or 128-slot counts): `need` for `t`, `window` for the current slice, plus an integer `missing` (or `formed`) so you do not rescan the hashes on every move.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash.new(0)` for character counts; `each_char` to avoid extra arrays.
- Store start index and length of the best window, then slice once at the end (`s[best_start, best_len]`).
- `t` may have duplicates — covering `'A'` once is not enough when `t` contains `'AA'`.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
