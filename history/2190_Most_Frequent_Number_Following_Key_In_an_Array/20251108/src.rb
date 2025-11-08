# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
  counts = {}
  nums.each_cons(2) do |a, b|
    next unless a === key

    counts[b] ||= 0
    counts[b] += 1
  end
  counts.max_by { |k, v| v }[0]
end
