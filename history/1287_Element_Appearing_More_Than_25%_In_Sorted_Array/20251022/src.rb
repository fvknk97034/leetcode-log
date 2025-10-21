# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  len = arr.length
  target_len = (len / 4.to_f).floor + 1
  i = 0
  while i <= len - target_len
    a = arr[i, target_len]
    return arr[i] if a.all? { |n| n === a[0] }

    i += 1
  end
end
