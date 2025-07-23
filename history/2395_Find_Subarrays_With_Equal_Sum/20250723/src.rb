# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
  array = (0...nums.length - 1).map { |i| nums[i, 2].sum }
  array != array.uniq
end
