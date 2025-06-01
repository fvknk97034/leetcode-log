# @param {Integer} num
# @return {Integer}
def count_even(num)
  (1..num).count { |n| n.digits.sum { |m| m.to_i }.even? }
end
