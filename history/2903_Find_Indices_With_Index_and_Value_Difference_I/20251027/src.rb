# @param {Integer[]} nums
# @param {Integer} index_difference
# @param {Integer} value_difference
# @return {Integer[]}
def find_indices(nums, index_difference, value_difference)
  return [0, 0] if index_difference === 0 && value_difference === 0

  result = (0...nums.length).to_a.combination(2).find do |i, j|
    j - i >= index_difference && (nums[j] - nums[i]).abs >= value_difference
  end
  result || [-1, -1]
end
