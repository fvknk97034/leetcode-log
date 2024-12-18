# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  (0..n).map do |m|
    m.to_s(2).delete('0').length
  end
end
