# @param {Integer} num_ones
# @param {Integer} num_zeros
# @param {Integer} num_neg_ones
# @param {Integer} k
# @return {Integer}
def k_items_with_maximum_sum(num_ones, num_zeros, num_neg_ones, k)
  return k if num_ones >= k
  return num_ones if num_ones + num_zeros >= k

  num_ones - (k - num_ones - num_zeros)
end
