# @param {Integer} n
# @return {Integer}
def max_product(n)
  n.digits.max(2).inject(1) { |result, num| result * num }
end
