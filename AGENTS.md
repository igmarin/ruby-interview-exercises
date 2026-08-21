# AGENTS.md — Ruby Interview Exercises

## Project type

Ruby interview prep repository. Contains 54 coding exercises plus a code-review discussion exercise.

## Conventions

- Every `.rb` file begins with `# frozen_string_literal: true`.
- Exercises use `Minitest` from the Ruby standard library; no `Gemfile` is required.
- Each coding exercise has:
  - `instructions.md` (problem statement, examples, rubric)
  - `solution.rb` (student stub, raises `NotImplementedError`)
  - `test.rb` (Minitest suite)
  - `.solution_reference.rb` (hidden reference solution)
- The `code-review` exercise only has `instructions.md` and `.discussion_guide.md`.

## Useful commands

- Run a single exercise test: `cd exercises/<pattern>/<difficulty>/<NN>-<name> && ruby test.rb`
- Run all tests: `ruby run_all_tests.rb`
- Syntax-check a Ruby file: `ruby -c path/to/file.rb`
- Count exercises: `find exercises -name instructions.md | wc -l`

## Adding a new exercise

1. Choose a pattern and difficulty.
2. Create `exercises/<pattern>/<difficulty>/<NN>-<name>/`.
3. Add `instructions.md`, `solution.rb`, `test.rb`, and `.solution_reference.rb`.
4. Run `ruby -c` on the new `.rb` files.
5. Run the test with the reference solution and then restore the stub.
6. Update `README.md` and `docs/plan-and-next-steps.md` if the exercise is part of the public catalog.
