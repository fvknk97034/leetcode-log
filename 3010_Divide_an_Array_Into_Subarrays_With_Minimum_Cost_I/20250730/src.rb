# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
  nums[0] + nums[1..].min(2).sum
end
