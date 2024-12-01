# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  count = 1
  n1 = nums[0]
  i = 1
  while i < nums.length
    n2 = nums[i]
    break if n2 === '-'

    unless n1 === n2
      count = 1
      n1 = n2
      i += 1
      next
    end

    count += 1
    if count > 2
      nums.delete_at(i)
      nums << '-'
      next
    end
    i += 1
  end
  nums.count { _1 != '-' }
end
