# @param {Integer[]} nums
# @return {Boolean}
def can_alice_win(nums)
  nums.filter { |n| n < 10 }.sum != nums.filter { |n| n >= 10 }.sum
end
