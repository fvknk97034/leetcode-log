# @param {Integer[]} nums
# @return {Integer}
def alternating_sum(nums)
  result = 0
  is_add = true
  while (n = nums.shift)
    n *= -1 unless is_add

    result += n
    is_add = !is_add
  end
  result
end
