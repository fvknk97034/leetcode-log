# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
  words.count { |w| s.start_with?(w) }
end
