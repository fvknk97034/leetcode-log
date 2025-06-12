# @param {Integer[]} nums
# @return {Integer}
def max_adjacent_distance(nums)
  result = 0

  nums << nums[0]
  nums.each_cons(2) do |n|
    result = [(n[1] - n[0]).abs, (n[0] - n[1]).abs, result].max
  end

  result
end
