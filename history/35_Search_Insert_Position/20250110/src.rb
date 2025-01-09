# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.index(target) || nums.filter { _1 < target }.length
end
