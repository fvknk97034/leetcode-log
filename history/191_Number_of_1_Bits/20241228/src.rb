# @param {Integer} n
# @return {Integer}
def hamming_weight(n)
  sum = 0
  until n === 0
    sum += n % 2
    n /= 2
  end
  sum
end
