# @param {String[]} words
# @return {Integer}
def count_prefix_suffix_pairs(words)
  words.combination(2).count do |w1, w2|
    isPrefixAndSuffix(w1, w2)
  end
end

def isPrefixAndSuffix(str1, str2)
  str2.start_with?(str1) && str2.end_with?(str1)
end
