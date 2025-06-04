# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
  nums.inject(:&).sort
end
