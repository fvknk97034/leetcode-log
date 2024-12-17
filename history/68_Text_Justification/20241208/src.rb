# @param {String[]} words
# @param {Integer} max_width
# @return {String[]}
def full_justify(words, max_width)
  results = []
  result = []
  words.each do |word|
    next result << word if word.length + joined_sentence_length(result) + result.length <= max_width

    results << result
    result = [word]
  end
  results << result

  results[0..-2].map! do |sentences|
    next sentences if sentences.length === 1

    space_count = sentences.length - 1

    all_space_len = max_width - joined_sentence_length(sentences)
    space_len = all_space_len / space_count
    diff_space_len = all_space_len - space_len * space_count

    (0...space_count).each do |j|
      adding_space = diff_space_len < 1 ? 0 : 1
      sentences.insert(1 + 2 * j, ' ' * (space_len + adding_space))
      diff_space_len -= 1
    end
    sentences
  end
  (0...(results[-1].length - 1)).each { |j| results[-1].insert(1 + 2 * j, ' ') }

  results.map { |r| r.join << ' ' * (max_width - joined_sentence_length(r)) }
end

def joined_sentence_length(array)
  array.sum { _1.length }
end
