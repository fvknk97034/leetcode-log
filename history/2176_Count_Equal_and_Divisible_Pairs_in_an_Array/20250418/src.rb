# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_pairs(nums, k)
  len = nums.length
  (0...(len - 1)).sum do |i|
    ((i + 1)...len).count { |j| (i * j) % k === 0 && nums[i] === nums[j] }
  end
end
