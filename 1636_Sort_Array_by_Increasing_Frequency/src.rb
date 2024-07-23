# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  sorted_array = nums.sort.reverse.sort do |a, b|
    nums.count(a) <=> nums.count(b)
  end
end
