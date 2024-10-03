# @param {Integer[]} nums
# @return {Integer}
def repeated_n_times(nums)
  nums.find{ |n| nums.count(n) > 1 }
end
