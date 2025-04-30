# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums.count { |n| (n >= 10 && n < 100) || (n >= 1000 && n < 10000) || n === 100000 }
end
