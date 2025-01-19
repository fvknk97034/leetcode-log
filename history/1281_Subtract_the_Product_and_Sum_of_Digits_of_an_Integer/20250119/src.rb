# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
  nums = n.to_s.chars.map(&:to_i)
  nums.inject(1) { |result, item| result *= item } - nums.sum
end
