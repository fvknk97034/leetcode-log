# @param {String} word
# @return {Integer}
def number_of_special_chars(word)
  counts = word.chars.uniq.map(&:downcase).tally
  counts.count { |_k, v| v === 2 }
end
