# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def number_of_child(n, k)
  i = 0
  go_left = true
  until k === 0
    i += go_left ? 1 : -1
    k -= 1
    next if i > 0 && i < n - 1

    go_left = i === 0
  end
  i
end
