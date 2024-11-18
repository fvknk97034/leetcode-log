# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  return [0] * code.length if k === 0

  results = []
  tmp = code + code
  len = code.length
  (0...len).each do |i|
    results << (k > 0 ? tmp[(i + 1)..(i + k)].sum : tmp[(i + len + k)...(i + len)].sum)
  end
  results
end
