# @param {String} s
# @return {Integer}
def max_freq_sum(s)
  vowels = ['a', 'e', 'i', 'o', 'u']
  vowels_max_count = s.chars.tally.filter { |c| vowels.include?(c) }.values.max || 0
  consonants_max_count = s.delete('aeiou').chars.tally.values.max || 0

  vowels_max_count + consonants_max_count
end
