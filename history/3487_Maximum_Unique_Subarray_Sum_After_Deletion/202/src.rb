# @param {Integer[]} nums
# @return {Integer}
def max_sum(nums)
  return nums.max if nums.all?(&:negative?)

  nums.filter(&:positive?).uniq.sum
end
