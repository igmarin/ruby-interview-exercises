# Reverse String

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 344](https://leetcode.com/problems/reverse-string/)

## Problem

Write a function that reverses a string.

## Function signature

```ruby
def reverse_string(s)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `"hello"` | `"olleh"` |
| `"Hannah"` | `"hannaH"` |
| `""` | `""` |

## Constraints

- The input string may contain any printable characters.

## Multi-part prompt

1. Return a new string that contains the characters of `s` in reverse order.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use `String#chars` to turn the string into an array of characters.
- Rebuild the string with `String#<<` to avoid creating many intermediate strings.
- Compare `String#<<` (mutation) with `String#+` (new allocation).

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
