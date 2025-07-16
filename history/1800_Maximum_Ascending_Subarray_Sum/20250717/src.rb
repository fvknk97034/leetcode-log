# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
  nums.slice_when { |a, b| a >= b }.map(&:sum).max
end
