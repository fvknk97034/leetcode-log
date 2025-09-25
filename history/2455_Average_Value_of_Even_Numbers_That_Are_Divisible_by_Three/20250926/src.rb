# @param {Integer[]} nums
# @return {Integer}
def average_value(nums)
  nums.filter! { |n| n % 6 === 0 }
  return 0 if nums === []

  nums.sum / nums.length
end
