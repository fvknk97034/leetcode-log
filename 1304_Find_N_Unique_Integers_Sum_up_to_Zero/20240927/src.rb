# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
  n % 2 == 1 ? Range.new(-n / 2 + 1, n / 2).to_a : Range.new(-n / 2, n / 2).to_a - [0]
end
