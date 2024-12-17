# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
  max, n = nums.max(2)
  max < n * 2 ? -1 : nums.index(max)
end
