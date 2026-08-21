# Interview Prep Plan & Next Steps

This document is your study companion. It contains the full exercise catalog, a suggested schedule, and the workflow for when you come back for pair review.

## What you have

The repo contains 40 Ruby exercises:

- **20 basic** — single-concept, build confidence and muscle memory.
- **10 medium** — often multi-part, require combining two patterns.
- **10 hard** — multi-part optimization, design, and discussion.

Every coding exercise has:

- `instructions.md` — the problem.
- `solution.rb` — your workspace (starts as a stub).
- `test.rb` — failing tests to make pass.
- `.solution_reference.rb` — a hidden reference answer.

The `code-review/hard/01-ruby-code-review-and-rubric/` exercise is a discussion exercise: review a Ruby snippet, identify issues, and propose refactors.

## Patterns covered

| Pattern | Focus | Count |
|---------|-------|-------|
| `hash-maps` | O(1) lookups, frequency, grouping | 7 |
| `arrays-and-strings` | in-place manipulation, string building | 7 |
| `two-pointers` | sorted arrays, palindromes, partition | 5 |
| `sliding-window` | subarray/substring problems | 4 |
| `trees-and-graphs` | BFS/DFS, serialization, topo sort | 10 |
| `ruby-idioms` | `Hash`, `Array`, `Enumerable`, `Set`, heaps | 6 |
| `code-review` | trade-off analysis, performance, design | 1 |

## Suggested 6-week schedule

### Week 1: Foundations

- Complete all **basic** `hash-maps` (4)
- Complete all **basic** `arrays-and-strings` (6)
- Target: solve each in under 15 minutes, explain complexity out loud.

### Week 2: Two Pointers & Sliding Window

- Complete all **basic** and **medium** `two-pointers` (4)
- Complete all **basic** and **medium** `sliding-window` (3)
- Target: be comfortable with invariants and window state.

### Week 3: Trees & Graphs Foundations

- Complete all **basic** and **medium** `trees-and-graphs` (6)
- Target: write BFS/DFS without looking at notes.

### Week 4: Ruby Idioms & Medium Review

- Complete all **basic** and **medium** `ruby-idioms` (4)
- Re-do any medium problem you found hard.
- Target: explain Ruby-specific trade-offs (`each` vs `map`, `Hash` order, `Set`, string concatenation).

### Week 5: Hard Problems

- Complete all **hard** exercises.
- Target: 30–45 minutes per problem, full multi-part reasoning.

### Week 6: Mock Interviews & Code Review

- Do 3–5 timed mock problems from random patterns.
- Complete `code-review/hard/01-ruby-code-review-and-rubric`.
- Record yourself explaining a solution.

## Exercise catalog

### Basic

| Exercise | Pattern | Reference |
|----------|---------|-----------|
| `hash-maps/basic/01-two-sum` | Hash Maps | LeetCode 1 |
| `hash-maps/basic/02-contains-duplicate` | Hash Maps | LeetCode 217 |
| `hash-maps/basic/03-valid-anagram` | Hash Maps | LeetCode 242 |
| `hash-maps/basic/04-intersection-of-two-arrays` | Hash Maps | LeetCode 349 |
| `arrays-and-strings/basic/01-palindrome-number` | Arrays & Strings | LeetCode 9 |
| `arrays-and-strings/basic/02-reverse-string` | Arrays & Strings | LeetCode 344 |
| `arrays-and-strings/basic/03-fizzbuzz` | Arrays & Strings | LeetCode 412 |
| `arrays-and-strings/basic/04-move-zeroes` | Arrays & Strings | LeetCode 283 |
| `arrays-and-strings/basic/05-remove-duplicates-from-sorted-array` | Arrays & Strings | LeetCode 26 |
| `arrays-and-strings/basic/06-plus-one` | Arrays & Strings | LeetCode 66 |
| `two-pointers/basic/01-valid-palindrome` | Two Pointers | LeetCode 125 |
| `two-pointers/basic/02-two-sum-ii` | Two Pointers | LeetCode 167 |
| `two-pointers/basic/03-merge-sorted-array` | Two Pointers | LeetCode 88 |
| `sliding-window/basic/01-maximum-average-subarray-i` | Sliding Window | LeetCode 643 |
| `sliding-window/basic/02-contains-duplicate-ii` | Sliding Window | LeetCode 219 |
| `trees-and-graphs/basic/01-maximum-depth-of-binary-tree` | Trees/Graphs | LeetCode 104 |
| `trees-and-graphs/basic/02-invert-binary-tree` | Trees/Graphs | LeetCode 226 |
| `trees-and-graphs/basic/03-path-sum` | Trees/Graphs | LeetCode 112 |
| `ruby-idioms/basic/01-sum-and-average` | Ruby Idioms | original |
| `ruby-idioms/basic/02-word-frequency-counter` | Ruby Idioms | original |

### Medium

| Exercise | Pattern | Reference |
|----------|---------|-----------|
| `hash-maps/medium/01-group-anagrams` | Hash Maps | LeetCode 49 |
| `hash-maps/medium/02-top-k-frequent-elements` | Hash Maps | LeetCode 347 |
| `arrays-and-strings/medium/01-string-to-integer-atoi` | Arrays & Strings | LeetCode 8 |
| `two-pointers/medium/01-3sum` | Two Pointers | LeetCode 15 |
| `sliding-window/medium/01-longest-substring-without-repeating-characters` | Sliding Window | LeetCode 3 |
| `trees-and-graphs/medium/01-binary-tree-level-order-traversal` | Trees/Graphs | LeetCode 102 |
| `trees-and-graphs/medium/02-number-of-islands` | Trees/Graphs | LeetCode 200 |
| `trees-and-graphs/medium/03-course-schedule` | Trees/Graphs | LeetCode 207 |
| `ruby-idioms/medium/01-evaluate-reverse-polish-notation` | Ruby Idioms | LeetCode 150 |
| `ruby-idioms/medium/02-lru-cache` | Ruby Idioms | LeetCode 146 |

### Hard

| Exercise | Pattern | Reference |
|----------|---------|-----------|
| `hash-maps/hard/01-longest-consecutive-sequence` | Hash Maps | LeetCode 128 |
| `two-pointers/hard/01-trapping-rain-water` | Two Pointers | LeetCode 42 |
| `sliding-window/hard/01-sliding-window-maximum` | Sliding Window | LeetCode 239 |
| `trees-and-graphs/hard/01-binary-tree-maximum-path-sum` | Trees/Graphs | LeetCode 124 |
| `trees-and-graphs/hard/02-serialize-and-deserialize-binary-tree` | Trees/Graphs | LeetCode 297 |
| `trees-and-graphs/hard/03-word-ladder` | Trees/Graphs | LeetCode 127 |
| `trees-and-graphs/hard/04-course-schedule-ii` | Trees/Graphs | LeetCode 210 |
| `ruby-idioms/hard/01-merge-k-sorted-lists` | Ruby Idioms | LeetCode 23 |
| `ruby-idioms/hard/02-find-median-from-data-stream` | Ruby Idioms | LeetCode 295 |
| `code-review/hard/01-ruby-code-review-and-rubric` | Code Review | original |

## Per-exercise workflow

```
1. Read instructions.md
2. Implement in solution.rb
3. Run ruby test.rb
4. If tests pass, re-read the Discussion & Rubric section and explain your solution out loud.
5. If stuck, take a 5-minute break, then try again.
6. Only then, peek at .solution_reference.rb and compare.
```

## How to come back for pair review

When you finish a batch or want feedback, open a new session and tell me:

- Which exercise(s) you completed.
- What your approach was and why.
- Where you got stuck or what you are unsure about.

I will:

1. Run your `solution.rb` against `test.rb`.
2. Compare it to `.solution_reference.rb`.
3. Ask follow-up questions about complexity, edge cases, and Ruby idioms.
4. Suggest refactors or a more optimal approach if needed.

## Structured evaluation mindset

In a Karat-style interview, the interviewer evaluates:

- **Problem-solving:** Did you pick a reasonable approach? Did you handle edge cases?
- **Communication:** Did you explain your thinking, trade-offs, and complexity?
- **Code quality:** Is the code readable, idiomatic, and free of obvious bugs?
- **Testing/debugging:** Did you validate with examples and consider constraints?
- **Discussion & analysis:** Can you review code, identify bottlenecks, and propose improvements?

For each exercise, the `instructions.md` includes a short rubric. Use it to self-assess before looking at the reference.

## Next concrete steps

1. Pick the first exercise (`hash-maps/basic/01-two-sum`) and solve it.
2. Set a recurring study time (e.g., 30–60 minutes per day).
3. Keep a short log of your solves: date, problem, time, what you learned.
4. Return for pair review after every 5–10 exercises.
