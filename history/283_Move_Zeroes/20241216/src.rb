# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  nums.sort_by! { _1 === 0 ? 1 : 0 }
end
