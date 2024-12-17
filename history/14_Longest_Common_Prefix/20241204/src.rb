# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  return strs[0] if strs.length === 1

  min_str = strs.min { _1.length }
  min_len = min_str.length
  return '' if min_len === 0

  (0...min_len).each do |i|
    str = min_str[i]
    next if strs.all? { |s| s[i] === str }

    return min_str[0...i]
  end
  min_str
end
