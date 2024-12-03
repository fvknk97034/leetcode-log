# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  nums1.concat(nums2).sort_by! { _1 }
  len = nums1.length
  median_index = len.odd? ? len / 2 : len / 2 - 1

  tmp = len.odd? ? 1 : 2
  nums1[median_index, tmp].sum / tmp.to_f
end
