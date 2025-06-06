# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  x_bit = x.to_s(2)
  y_bit = y.to_s(2)
  bit_len = x < y ? y_bit.length : x_bit.length

  x_bit = x_bit.rjust(bit_len, '0')
  y_bit = y_bit.rjust(bit_len, '0')

  (0...bit_len).count { |i| x_bit[i] != y_bit[i] }
end
