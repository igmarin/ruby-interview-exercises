# String to Integer (atoi)

- **Difficulty:** medium
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 8](https://leetcode.com/problems/string-to-integer-atoi/)

## Problem

Implement `my_atoi(s)`, which converts a string to a 32-bit signed integer.

The function should discard leading whitespace, then read an optional sign and as many numeric digits as possible. If the resulting number is outside the 32-bit signed integer range, clamp it. If the string contains no valid number, return `0`.

## Function signature

```ruby
def my_atoi(s)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `"42"` | `42` |
| `"   -42"` | `-42` |
| `"4193 with words"` | `4193` |
| `"words and 987"` | `0` |
| `"-91283472332"` | `-2147483648` |

## Constraints

- `0 <= s.length <= 200`
- `s` consists of English letters, digits, `' '`, `'+'`, `'-'`, and `'.'`.

## Multi-part prompt

1. Trim leading whitespace and parse the optional sign and contiguous digit sequence.
2. Clamp the parsed value to the 32-bit signed integer range.
3. Handle edge cases such as overflow, a non-numeric start, and empty or sign-only strings.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use `String#lstrip` and pattern matching or `gsub` to isolate the numeric prefix.
- Convert the digit string to an integer with `String#to_i` and then clamp.
- Avoid integer overflow by comparing against `2**31` bounds.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
