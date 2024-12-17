# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  count = 0
  len = nums.length

  (0...(len - 1)).each do |i|
    ((i + 1)...len).each do |j|
      count += 1 if nums[i] === nums[j]
    end
  end

  count
end
