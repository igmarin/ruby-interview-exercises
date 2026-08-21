# Alien Dictionary

- **Difficulty:** hard
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 269](https://leetcode.com/problems/alien-dictionary/)

## Problem

You are given a list of words `words` written in an alien language that uses lowercase English letters. The words are sorted lexicographically by the alien language's unknown letter order.

Return a string of unique letters representing a valid letter order for this language. If multiple valid orders exist, return the **lexicographically smallest** one. If the order is invalid (a cycle, or a longer word appearing before its own prefix), return `""`.

## Function signature

```ruby
def alien_order(words)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `["wrt", "wrf", "er", "ett", "rftt"]` | `"wertf"` |
| `["z", "x"]` | `"zx"` |
| `["z", "x", "z"]` | `""` |

## Constraints

- `1 <= words.length <= 100`
- `1 <= words[i].length <= 100`
- `words[i]` consists of lowercase English letters.

## Multi-part prompt

1. Compare consecutive words to extract precedence edges (`earlier_char -> later_char` at the first mismatch).
2. If the second word is a prefix of the first (and the first is longer), the ordering is invalid.
3. Topologically sort the graph. Use a min-oriented ready queue so ties produce the lexicographically smallest string. A leftover node with remaining indegree means a cycle — return `""`.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Hash` of `Set` (or arrays) for adjacency; `Hash.new(0)` for indegree.
- `require 'set'` is allowed; `Set` makes duplicate edges a no-op.
- Without a heap, `sort` the current zero-indegree letters before shifting the smallest — `n` is tiny.

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
