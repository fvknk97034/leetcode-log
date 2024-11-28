# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.tally.max { |a, b| a[1] <=> b[1] }[0]
end
