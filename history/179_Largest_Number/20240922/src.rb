# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  return '0' if nums.all?(0)

  nums.map(&:to_s).sort{ |a, b| b + a <=> a + b }.join
end
