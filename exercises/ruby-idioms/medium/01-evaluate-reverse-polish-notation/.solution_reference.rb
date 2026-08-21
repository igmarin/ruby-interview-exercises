# frozen_string_literal: true

# @param [Array<String>] tokens
# @return [Integer]
def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    case token
    when '+', '-', '*', '/'
      raise ArgumentError, 'Insufficient operands' if stack.size < 2

      right = stack.pop
      left = stack.pop

      result = case token
               when '+' then left + right
               when '-' then left - right
               when '*' then left * right
               when '/' then left.fdiv(right).to_i
               end

      stack.push(result)
    else
      stack.push(parse_operand!(token))
    end
  end

  raise ArgumentError, 'Malformed expression' unless stack.size == 1

  stack.last
end

# @param [String] token
# @return [Integer]
# @raise [ArgumentError]
def parse_operand!(token)
  Integer(token)
rescue ArgumentError
  raise ArgumentError, "Invalid token: #{token}"
end
