# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
  n.to_s.chars.each_with_index.inject(0){ |result, v| result + (v[1] % 2 == 0 ? v[0].to_i : - v[0].to_i) }
end
