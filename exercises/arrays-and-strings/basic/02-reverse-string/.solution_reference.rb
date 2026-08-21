# frozen_string_literal: true

# @param [String] s
# @return [String]
def reverse_string(s)
  reversed = String.new
  s.chars.reverse_each { |c| reversed << c }
  reversed
end
