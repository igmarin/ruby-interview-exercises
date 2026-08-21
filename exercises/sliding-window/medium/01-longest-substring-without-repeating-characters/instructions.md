# Longest Substring Without Repeating Characters

- **Difficulty:** medium
- **Pattern:** sliding-window
- **Reference:** [LeetCode 3](https://leetcode.com/problems/longest-substring-without-repeating-characters/)

## Problem

Given a string `s`, find the length of the longest substring that does not contain any repeating characters.

## Function signature

```ruby
def length_of_longest_substring(s)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `"abcabcbb"` | `3` |
| `"bbbbb"` | `1` |
| `"pwwkew"` | `3` |

## Constraints

- `0 <= s.length <= 5 * 10^4`
- `s` consists of English letters, digits, symbols, and spaces.

## Multi-part prompt

1. **Brute force:** enumerate all substrings, check each for repeated characters, and keep the longest. What is the time complexity?
2. **Sliding window with a hash map:** expand the right edge one character at a time, and use a `Hash` to record whether a character is currently inside the window. When you see a duplicate, shrink the left edge until the window is unique again.
3. **Optimize to one pointer expansion:** instead of shrinking the left edge one step at a time, store the last index of each character and jump `left` directly past the previous occurrence. This keeps the whole algorithm to a single right-to-left pass.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Iterate over characters with `String#chars` or `each_char`.
- Track the current window with a `Hash` mapping a character to its most recent index.
- Use `each_with_index` to get the right pointer value while iterating.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
