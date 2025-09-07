# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  i = 0
  len = arr.length
  until i >= len
    next i += 1 unless arr[i] === 0

    arr[i, 0] = [0]
    arr.pop

    i += 2
  end
end
