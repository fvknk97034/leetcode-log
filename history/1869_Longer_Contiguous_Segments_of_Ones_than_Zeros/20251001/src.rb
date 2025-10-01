# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
  return s === '1' if s.length === 1

  chars = s.chars
  return chars[0] === '1' if chars.uniq.length === 1

  longer, shorter = chars.slice_when { |a, b| a != b }
                         .uniq
                         .max_by(2) { |s| s.length }

  longer[0] === '1' && shorter[0] === '1' || longer[0] === '1' && longer.length > shorter.length
end
