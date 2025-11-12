# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  len = nums.length
  left = 0
  right = len - 1
  mid = (left + right) / 2
  search_len = (len.to_f / 4).ceil
  n = nums[mid]

  while left <= right
    return mid if n === target

    if n < target
      left += search_len
    else
      right -= search_len
    end

    mid = (left + right) / 2
    n = nums[mid]
    search_len = (search_len.to_f / 2).ceil
  end
  -1
end
