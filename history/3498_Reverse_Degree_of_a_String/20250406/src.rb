# @param {String} s
# @return {Integer}
def reverse_degree(s)
  s.bytes.each_with_index.sum { |b, i| (123 - b) * (i + 1) }
end
