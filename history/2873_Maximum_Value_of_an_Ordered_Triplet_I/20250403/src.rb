# @param {Integer[]} nums
# @return {Integer}
def maximum_triplet_value(nums)
  combination = nums.combination(3).max_by { (_1 - _2) * _3 }

  result = (combination[0] - combination[1]) * combination[2]
  result < 0 ? 0 : result
end
