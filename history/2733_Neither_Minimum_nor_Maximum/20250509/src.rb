# @param {Integer[]} nums
# @return {Integer}
def find_non_min_or_max(nums)
  return -1 if nums.length <= 2

  max, min = [nums.max, nums.min]
  nums.find { |n| !(n === max || n === min) }
end
