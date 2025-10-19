# @param {String} s
# @return {String}
def majority_frequency_group(s)
  s.chars
   .tally
   .group_by { |k, v| v }
   .max_by { |k, v| [v.length, k] }[-1]
   .map(&:first)
   .join
end
