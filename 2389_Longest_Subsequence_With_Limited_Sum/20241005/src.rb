# @param {Integer[]} nums
# @param {Integer[]} queries
# @return {Integer[]}
def answer_queries(nums, queries)
  answers = []

  count_sums = {}
  nums.sort!
  nums.each_index { |i| count_sums[i + 1] = nums[0..i].sum }

  queries.each { |q| answers << (count_sums.filter { |k, v| v <= q }.keys.max || 0) }
  answers
end
