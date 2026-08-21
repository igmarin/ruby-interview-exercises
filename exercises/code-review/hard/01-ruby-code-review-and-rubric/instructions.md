# Ruby Code Review & Rubric

- **Difficulty:** hard
- **Pattern:** code-review
- **Reference:** original

## Problem

Below is a small Ruby class that builds a simple text report for a user and their orders. It is intentionally imperfect. Review the code, identify the most important issues, and propose refactors.

```ruby
# frozen_string_literal: true

class UserReport
  attr_reader :user_id

  def initialize(user_id)
    @user_id = user_id
  end

  def build
    user = User.find(@user_id)
    orders = Order.where(user_id: @user_id)
    result = "Report for " + user.name + "\n"
    orders.each do |order|
      result = result + "- " + order.item_name + ": " + order.price.to_s + "\n"
    end
    result
  end
end
```

Consider performance, security, design, and Ruby/Rails idioms as you review.

## Multi-part prompt

1. What performance concerns do you see in `build`? How would you address them?
2. Are there correctness, nil-handling, or security risks? Where?
3. How does the code violate the Single Responsibility Principle or other design heuristics?
4. What Ruby idioms would you use to make the string construction more idiomatic and efficient?
5. How would you validate or sanitize the `user_id` input?
6. Compare `Order.where(user_id: @user_id)` with `user.orders`. What are the trade-offs?

## Discussion & Rubric

- What data structure or approach would you use to build the report text efficiently?
- What is the time and space complexity of the original and refactored implementations?
- What are the edge cases (missing user, missing orders, bad input, large result set)?
- What Ruby idioms or performance characteristics matter here?
- How would you explain this to an interviewer?

## Ruby-specific focus

- Prefer string interpolation (`"#{...}"`) or `Array#join` over repeated `String#+` inside a loop.
- Use `find_by` and nil guards instead of `find` when a missing record should produce a controlled result.
- Leverage ActiveRecord associations (`user.orders`) and eager loading (`includes`) to avoid N+1 queries.
- Keep methods short and single-purpose; separate data access from presentation.

## Running the tests

This is a discussion and rubric exercise — there is no `test.rb` to run.

## Spoiler warning

There is no `solution.rb` for this exercise. The hidden `.discussion_guide.md` contains one possible analysis and a refactored reference — do not open it until you have completed your own review.
