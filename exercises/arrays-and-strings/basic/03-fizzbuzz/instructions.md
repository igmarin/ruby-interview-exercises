# FizzBuzz

- **Difficulty:** basic
- **Pattern:** arrays-and-strings
- **Reference:** [LeetCode 412](https://leetcode.com/problems/fizz-buzz/)

## Problem

Given an integer `n`, return an array of strings where the `i`th string represents the number `i + 1`, unless that number is divisible by `3`, `5`, or both, in which case the string is `"Fizz"`, `"Buzz"`, or `"FizzBuzz"` respectively.

## Function signature

```ruby
def fizz_buzz(n)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `3` | `["1", "2", "Fizz"]` |
| `5` | `["1", "2", "Fizz", "4", "Buzz"]` |
| `15` | `["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]` |

## Constraints

- `1 <= n <= 10^4`

## Multi-part prompt

1. Build the output list in a single pass, transforming each number into the correct string.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Use `Array#map` to transform the range `1..n` into the result list.
- Prefer `String#<<` or interpolation over repeated `+` to build combined labels.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
