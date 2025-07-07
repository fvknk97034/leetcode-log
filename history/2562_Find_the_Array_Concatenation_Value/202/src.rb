# @param {Integer[]} nums
# @return {Integer}
def find_the_array_conc_val(nums)
  result = 0
  until nums.length <= 1
    result += nums.shift.to_s.concat(nums.pop.to_s).to_i
  end
  nums.length === 1 ? result + nums[0] : result
end
