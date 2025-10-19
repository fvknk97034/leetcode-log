# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def missing_multiple(nums, k)
  n = 1
  while nums.include?(k * n)
    n += 1
  end
  k * n
end
