# @param {Integer} num
# @return {Integer}
def largest_integer(num)
  digits = num.digits.reverse
  sorted_digits = digits.sort
  sorted_even_nums = sorted_digits.filter { |d| d.even? }
  sorted_odd_nums = sorted_digits - sorted_even_nums

  digits.map { |d| d.even? ? sorted_even_nums.pop : sorted_odd_nums.pop }.join.to_i
end
