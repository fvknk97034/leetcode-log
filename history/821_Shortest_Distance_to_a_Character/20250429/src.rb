# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  c_indexes = s.chars.each_with_index.map { |v, i| v === c ? i : nil }.compact
  (0...s.length).map { |i| c_indexes.map { |j| (j - i).abs }.min }
end
