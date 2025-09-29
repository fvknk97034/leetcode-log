# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  license_char_counts = license_plate.gsub(/[^a-zA-Z]/, '')
                                     .downcase
                                     .chars
                                     .tally
  words.sort_by { |w| w.length }.find do |w|
    counts = w.chars.tally
    license_char_counts.all? { |c, v| counts[c] && counts[c] >= v }
  end
end
