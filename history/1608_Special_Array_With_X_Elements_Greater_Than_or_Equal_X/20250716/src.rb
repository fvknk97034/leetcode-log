# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
  max = [nums.max, nums.length].min
  (1..max).find { |x| nums.count { |n| n >= x } === x } || -1
end
