# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
  (0...nums.length).zip(nums)
                   .max_by(k) { |k, v| v }
                   .sort_by { |k, v| k }
                   .map(&:last)
end
