# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
  nums.sort!
  nums.slice_when { |a, b| a < b }.all? { |a| a.length % 2 == 0}
end
