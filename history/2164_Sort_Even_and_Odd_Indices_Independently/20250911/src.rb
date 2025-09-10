# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
  evens, odds = nums.partition.with_index { |_n, i| i.even? }
  evens.sort!
  odds.sort!

  evens.flat_map { |n| [n, odds.pop] }.compact
end
