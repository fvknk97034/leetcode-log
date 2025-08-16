# @param {Integer} n
# @return {Boolean}
def check_divisibility(n)
  digits = n.digits
  sum = digits.sum
  product = digits.inject(1) { |result, v| result *= v }

  n % (sum + product) === 0
end
