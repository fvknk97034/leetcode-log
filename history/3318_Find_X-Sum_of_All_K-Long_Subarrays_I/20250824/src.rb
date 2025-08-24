# @param {Integer[]} nums
# @param {Integer} k
# @param {Integer} x
# @return {Integer[]}
def find_x_sum(nums, k, x)
  (0..(nums.length - k)).map do |i|
    nums[i..(i + k - 1)].sort_by { |k| -k }
                        .tally
                        .sort_by { |k, v| -v }[0, x]
                        .sum { |k, v| k * v }
  end
end
