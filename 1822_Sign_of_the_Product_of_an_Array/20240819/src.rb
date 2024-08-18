# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  return 0 if nums.include?(0)
  return 1 if nums.count {|n| n < 0} % 2 == 0
  return -1
end
