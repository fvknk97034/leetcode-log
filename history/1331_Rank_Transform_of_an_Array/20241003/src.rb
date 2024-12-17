# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  ranking_hash = arr.uniq.sort.each_with_index.to_h
  arr.map { |a| ranking_hash[a] + 1 }
end
