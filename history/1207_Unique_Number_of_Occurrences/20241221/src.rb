# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  count = arr.tally
  count.values.uniq.length === count.length
end
