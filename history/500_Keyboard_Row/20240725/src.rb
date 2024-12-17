# @param {String[]} words
# @return {String[]}
def find_words(words)
  keyboard_rows = ['qwertyuiopQWERTYUIOP', 'asdfghjklASDFGHJKL', 'zxcvbnmZXCVBNM']
  words.filter { |w| keyboard_rows.any? { |k| !/[#{k}]{#{w.length}}/.match(w).nil? } }
end
