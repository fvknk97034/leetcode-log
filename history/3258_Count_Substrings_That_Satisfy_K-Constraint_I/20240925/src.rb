# @param {String} s
# @param {Integer} k
# @return {Integer}
def count_k_constraint_substrings(s, k)
  s_len = s.length
  count = s_len
  (0...(s_len - 1)).each do |i|
    ((i + 1)...s_len).each do |j|
      sub_s = s[i..j]
      break if sub_s.count('1') > k && sub_s.count('0') > k
      count += 1
    end
  end

  count
end
