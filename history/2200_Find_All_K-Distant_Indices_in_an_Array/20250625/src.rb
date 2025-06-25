# @param {Integer[]} nums
# @param {Integer} key
# @param {Integer} k
# @return {Integer[]}
def find_k_distant_indices(nums, key, k)
  indexes = (0...nums.length).to_a
  return indexes if nums.uniq.length === 1

  key_indexes = indexes.filter { |i| nums[i] === key }
  indexes.filter do |i|
    (i - key_indexes.min_by { |j| (i - j).abs }).abs <= k
  end
end
