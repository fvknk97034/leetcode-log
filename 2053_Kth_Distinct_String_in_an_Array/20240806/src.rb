# @param {String[]} arr
# @param {Integer} k
# @return {String}
def kth_distinct(arr, k)
  arr.tally.filter { |_key, value| value == 1 }.keys[k - 1] || ""
end
