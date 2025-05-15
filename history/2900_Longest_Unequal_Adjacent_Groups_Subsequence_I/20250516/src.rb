# @param {String[]} words
# @param {Integer[]} groups
# @return {String[]}
def get_longest_subsequence(words, groups)
  results = [words[0]]
  groups.each_cons(2).with_index(1) do |g, i|
    results << words[i] unless g[0] === g[1]
  end
  results
end
