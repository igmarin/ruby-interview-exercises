# frozen_string_literal: true

require 'set'

# @param [Array<Integer>] nums1
# @param [Array<Integer>] nums2
# @return [Array<Integer>]
def intersection(nums1, nums2)
  (Set.new(nums1) & nums2).to_a
end
