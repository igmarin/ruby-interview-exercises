# Evaluate Reverse Polish Notation

- **Difficulty:** medium
- **Pattern:** ruby-idioms
- **Reference:** [LeetCode 150](https://leetcode.com/problems/evaluate-reverse-polish-notation/)

## Problem

You are given an array of tokens representing an arithmetic expression in Reverse Polish Notation (RPN). Evaluate the expression and return the resulting integer.

Valid operators are `+`, `-`, `*`, and `/`. Each operand may be an integer, and the division of two operands should truncate toward zero. The input is guaranteed to be a valid expression, except where your tests intentionally probe invalid tokens or malformed expressions.

## Function signature

```ruby
def eval_rpn(tokens)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `["2","1","+","3","*"]` | `9` |
| `["4","13","5","/","+"]` | `6` |
| `["10","6","9","3","+","-11","*","/","*","17","+","5","+"]` | `22` |

## Constraints

- `tokens` is an array of strings.
- Division truncates toward zero, not toward negative infinity.
- Invalid or malformed expressions should raise `ArgumentError`.

## Multi-part prompt

1. Implement a stack-based evaluator: push operands, pop two values, apply an operator, and push the result.
2. Implement division so it truncates toward zero, paying attention to Ruby's default `Integer#/` behavior.
3. Validate tokens and expression structure: detect unknown tokens, insufficient operands, and leftover stack values.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Array#pop`, `case`/`when`, `Integer#fdiv` vs `/`, `reduce`.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
