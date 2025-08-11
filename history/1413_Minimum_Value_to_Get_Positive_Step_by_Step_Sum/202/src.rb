# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
  result = 1
  nums.inject(result) do |sum, n|
    sum += n
    next sum if sum >= 1

    result = result - sum + 1
    sum = 1
  end
  result
end
