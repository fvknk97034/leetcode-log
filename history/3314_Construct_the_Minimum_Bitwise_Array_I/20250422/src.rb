# @param {Integer[]} nums
# @return {Integer[]}
def min_bitwise_array(nums)
  nums.map do |n|
    (1...n).find { |a| a | (a + 1) === n } || -1
  end
end
