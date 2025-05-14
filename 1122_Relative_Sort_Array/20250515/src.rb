# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @return {Integer[]}
def relative_sort_array(arr1, arr2)
  counts = arr1.tally
  exclude_nums = arr1.reject { |n1| arr2.include?(n1) }.sort

  arr2.flat_map { |n2| [n2] * counts[n2] }.concat(exclude_nums)
end
