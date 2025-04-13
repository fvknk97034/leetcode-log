# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
  broken_chars = broken_letters.chars
  text.split(' ').count { |w| broken_chars.none? { |b| w.include?(b) } }
end
