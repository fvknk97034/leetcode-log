# @param {Integer[]} nums
# @return {Integer}
def count_max_or_subsets(nums)
  return 1 if nums.length === 1

  target = nums.inject(0) { |result, n| result |= n }
  sum = (2...nums.length).sum do |n|
    nums.combination(n).count do |a|
      target === a.inject(0) { |result, v| result |= v }
    end
  end
  sum + nums.count(target) + 1
end
