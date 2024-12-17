# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  result = []
  (0...n).each do |i|
    result << nums[i]
    result << nums[i + n]
  end
  result
end
