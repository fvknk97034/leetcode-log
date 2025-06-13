# @param {Integer[]} nums
# @return {Integer}
def count_subarrays(nums)
  nums.each_cons(3).count { |n1, n2, n3| (n1 + n3) * 2 === n2 }
end
