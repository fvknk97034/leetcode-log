# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
  chars = s.chars
  return 2 if chars.uniq.length === 1

  len = s.length
  return len if chars.tally.values.max === 1

  window_len = len
  while window_len >= 2
    window_max_count = window_len
    (0..len - window_len).each do |i|
      window = chars[i, window_len]
      max = window.tally.values.max
      return window_len if max === 2

      window_max_count = [max, window_max_count].min
    end
    window_len -= window_max_count - 2
  end
  len
end
