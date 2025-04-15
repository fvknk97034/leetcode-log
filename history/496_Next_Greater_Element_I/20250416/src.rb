# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  nums1.map do |n1|
    j = nums2.index(n1)
    nums2[(j + 1)..].find { |n2| n2 > n1 } || -1
  end
end
