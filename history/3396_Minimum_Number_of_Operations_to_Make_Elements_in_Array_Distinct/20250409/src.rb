# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
  result = 0
  until nums === nums.uniq
    nums.shift(3)
    result += 1
  end
  result
end
