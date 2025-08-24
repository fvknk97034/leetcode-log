# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  word1_counts = word1.chars.tally
  word2_counts = word2.chars.tally
  keys = word1_counts.keys.concat(word2_counts.keys).uniq

  keys.all? do |k|
    count1 = word1_counts[k] || 0
    count2 = word2_counts[k] || 0

    (count1 - count2).abs <= 3
  end
end
