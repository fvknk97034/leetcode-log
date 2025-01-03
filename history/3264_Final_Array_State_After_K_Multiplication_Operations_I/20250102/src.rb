# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} multiplier
# @return {Integer[]}
def get_final_state(nums, k, multiplier)
  until k === 0
    min = nums.min
    index = nums.index(min)
    nums[index] *= multiplier
    k -= 1
  end
  nums
end
