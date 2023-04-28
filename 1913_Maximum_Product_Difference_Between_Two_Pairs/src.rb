# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
  max1, max2 = nums.max(2)
  min1, min2 = nums.min(2)

  max1 * max2 - min1 * min2
end
