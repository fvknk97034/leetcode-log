# @param {Integer[]} nums
# @return {Integer}
def semi_ordered_permutation(nums)
  n = nums.length

  result = nums.index(1)
  nums.delete(1)

  result += nums.length - nums.index(n) - 1
end
