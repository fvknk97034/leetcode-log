# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
  num = original
  while nums.include?(num) do
    num *= 2
  end
  num
end
