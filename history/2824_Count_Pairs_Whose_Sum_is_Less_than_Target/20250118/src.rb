# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def count_pairs(nums, target)
  nums[0...].each_with_index.sum do |n, i|
    nums[(i + 1)..].count { |m| n + m < target }
  end
end
