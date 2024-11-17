# @param {Integer[]} nums
# @return {Boolean}
def is_good(nums)
  max = nums.max
  nums.sort === (1..max).to_a.push(max)
end
