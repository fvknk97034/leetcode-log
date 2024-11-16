# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def results_array(nums, k)
  nums.each_cons(k).map { |v| power_of_array?(v) ? v[-1] : -1 }
end

def power_of_array?(values)
  len = values.length
  values[0] + len - 1 === values[-1] && values.uniq === values && values === values.sort
end
