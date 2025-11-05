# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
  (nums - nums.minmax).length
end
