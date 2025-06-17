# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
  (0...nums.length).find { |i| nums[...i].sum === nums[i + 1..].sum } || -1
end
