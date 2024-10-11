# @param {Integer[]} nums
# @return {String}
def triangle_type(nums)
  nums.sort!
  return 'none' if nums[0, 2].sum <= nums[-1]

  case nums.uniq.length
  when 1
    return 'equilateral'
  when 2
    return 'isosceles'
  when 3
    return 'scalene'
  end
end
