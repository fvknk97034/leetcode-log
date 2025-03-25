# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  results = []
  nums1.each do |n|
    i = nums2.index(n)
    next if i.nil?

    results << n
    nums2.delete_at(i)
  end

  results
end
