# @param {Integer[]} nums
# @return {Integer[]}
def left_right_difference(nums)
  (0...nums.length).map { |i| (nums[...i].sum - nums[(i + 1)..].sum).abs }
end
