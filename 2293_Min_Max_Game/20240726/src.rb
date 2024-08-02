# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
  return nums[0] if nums.length == 1

  new_nums = []
  nums.length.times do |i|
    if i % 4 == 0
      new_nums << nums[i, 2].min
      next
    end

    new_nums << nums[i, 2].max if i % 4 == 2
  end

  min_max_game(new_nums)
end
