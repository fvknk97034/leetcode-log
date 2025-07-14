# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  len = words.length
  return true if len === 1

  concat_words = ''
  words.each { |w| concat_words << w }
  concat_words.chars.tally.values.all? { |v| v % len === 0 }
end
