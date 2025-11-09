# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
  return 0 if k === 1

  result = 100000
  nums.sort.each_cons(k) do |scores|
    min = scores[0]
    max = scores[-1]
    result = max - min if max - min < result
  end
  result
end
