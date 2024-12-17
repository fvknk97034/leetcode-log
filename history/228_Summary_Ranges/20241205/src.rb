# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
  nums.chunk_while { |n, m| n + 1 === m }.map { |v| v.length === 1 ? v[0].to_s : "#{v[0]}->#{v[-1]}" }
end
