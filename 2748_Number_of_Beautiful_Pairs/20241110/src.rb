# @param {Integer[]} nums
# @return {Integer}
def count_beautiful_pairs(nums)
  count = 0
  len = nums.length
  (0...(len - 1)).count do |i|
    n = nums[i].to_s[0].to_i

    ((i + 1)...len).each do |j|
      m = nums[j].to_s[-1].to_i
      count += 1 if n.gcd(m) === 1
    end
  end
  count
end
