# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def min_changes(n, k)
  n_bit_indexes = n.to_s(2)
                   .reverse
                   .chars
                   .map
                   .with_index { |n, i| n === '1' ? i : nil }
                   .compact
  k_bit_indexes = k.to_s(2)
                   .reverse
                   .chars
                   .map
                   .with_index { |n, i| n === '1' ? i : nil }
                   .compact

  return (n_bit_indexes - k_bit_indexes).length if (k_bit_indexes - n_bit_indexes).empty?

  -1
end
