# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
  targets = Set.new(1..k)
  collections = Set[]
  result = 0
  until targets.subset?(collections)
    collections << nums.pop
    result += 1
  end
  result
end
