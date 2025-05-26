# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  arr.tally.filter { |k, v| k === v }.max&.first || -1
end
