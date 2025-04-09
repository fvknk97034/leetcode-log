# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
  nums.min < k ? -1 : nums.uniq.count { |n| n > k }
end
