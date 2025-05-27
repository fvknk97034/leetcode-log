# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def sum_of_good_numbers(nums, k)
  result = 0
  len = nums.length
  nums.each_with_index do |n, i|
    next if i >= k && n <= nums[i - k]
    next if i + k < len && n <= nums[i + k]

    result += n
  end

  result
end
