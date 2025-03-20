# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
  result = nums.sum
  result += (2..nums.length).sum do |i|
    nums.combination(i).sum do |values|
      values[1..].inject(values[0]) { |n, r| r ^ n }
    end
  end
end
