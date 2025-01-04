# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
  prefix_nums = nums.shift(nums.length - k % nums.length)
  nums.concat(prefix_nums)
end
