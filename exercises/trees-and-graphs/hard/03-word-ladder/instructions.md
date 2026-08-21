# Word Ladder

- **Difficulty:** hard
- **Pattern:** trees-and-graphs
- **Reference:** [LeetCode 127 — Word Ladder](https://leetcode.com/problems/word-ladder/)

## Problem

A transformation sequence from word `begin_word` to word `end_word` using a dictionary `word_list` is a sequence of words where:

- The first word is `begin_word`.
- The last word is `end_word`.
- Only one letter can be changed at a time.
- Each intermediate word must exist in `word_list`.

Return the length of the shortest transformation sequence, or `0` if no such sequence exists.

## Function signature

```ruby
def ladder_length(begin_word, end_word, word_list)
  # your implementation here
end
```

## Examples

| Input | Output |
|-------|--------|
| `begin_word = 'hit', end_word = 'cog', word_list = ['hot','dot','dog','lot','log','cog']` | `5` |
| `begin_word = 'hit', end_word = 'cog', word_list = ['hot','dot','dog','lot','log']` | `0` |

## Constraints

- `1 <= begin_word.length <= 10`
- `end_word.length == begin_word.length`
- `1 <= word_list.length <= 5000`
- `word_list[i].length == begin_word.length`
- `begin_word`, `end_word`, and `word_list[i]` consist of lowercase English letters.

## Multi-part prompt

1. Perform BFS over words.
2. Generate intermediate patterns (e.g., `'h*t'`) to find neighbors efficiently.
3. Discuss how bidirectional BFS could optimize the search.

## Discussion & Rubric

- What data structure did you pick and why?
- What is the time and space complexity?
- What are the edge cases?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- `Set` and `Hash` adjacency lists
- BFS
- Pattern generation

## Running the tests

`ruby test.rb`

## Spoiler warning

`solution.rb` is your workspace. The hidden `.solution_reference.rb` contains one possible answer — do not open it until you have attempted the problem.
