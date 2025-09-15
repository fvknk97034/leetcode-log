# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def find_kth_positive(arr, k)
  diff_arr = (1..arr.max).to_a - arr

  diff_len = diff_arr.length
  return diff_arr[k - 1] if k <= diff_len

  arr[-1] + k - diff_len
end
