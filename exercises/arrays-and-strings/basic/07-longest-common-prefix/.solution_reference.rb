# frozen_string_literal: true

# @param [Array<String>] strs
# @return [String]
def longest_common_prefix(strs)
  return '' if strs.empty?

  prefix = strs[0]
  strs[1..].each do |word|
    prefix = prefix[0...-1] until word.start_with?(prefix) || prefix.empty?
    return '' if prefix.empty?
  end
  prefix
end
