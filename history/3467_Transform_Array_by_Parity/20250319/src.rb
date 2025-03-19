# @param {Integer[]} nums
# @return {Integer[]}
def transform_array(nums)
  even_count = nums.count(&:even?)
  ([0] * even_count).concat([1] * (nums.length - even_count))
end
