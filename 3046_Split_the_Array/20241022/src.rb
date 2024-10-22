# @param {Integer[]} nums
# @return {Boolean}
def is_possible_to_split(nums)
  nums.tally.all?{ |_k, v| v <= 2 }
end
