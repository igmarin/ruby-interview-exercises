# Palindrome Number

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 9](https://leetcode.com/problems/palindrome-number/)

## Problem

Given an integer `x`, return `true` if `x` is a palindrome, and `false` otherwise.

An integer is a palindrome when it reads the same forward and backward. Negative numbers are not palindromes.

## Function signature

```ruby
def is_palindrome(x)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `121` | `true` |
| `-121` | `false` |
| `10` | `false` |

## Constraints

- `-2^31 <= x <= 2^31 - 1`

## Multi-part prompt

1. Implement a function that returns `true` when `x` reads the same from left to right and right to left.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use `String#chars` to split the integer into comparable characters.
- Compare the character array with its reversed form.
- Consider the cost of string allocation versus a numeric reversal.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
