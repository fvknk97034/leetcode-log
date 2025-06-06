# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
  count = 0
  target_num = nums.find { |n| nums.count(n) >= 2 }

  until target_num.nil?
    indexes = nums.each_with_index.map { |n, i| n === target_num ? i : nil }.compact
    indexes[..1].reverse.each { |i| nums.delete_at(i) }

    target_num = nums.find { |n| nums.count(n) >= 2 }
    count += 1
  end
  [count, nums.length]
end
