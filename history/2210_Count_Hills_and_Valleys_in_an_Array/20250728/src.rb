# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
  left_index = nil
  right_index = nil

  (1...nums.length - 1).count do |i|
    next_left_index = nums[...i].rindex { |n| n != nums[i] }
    next false if left_index === next_left_index

    is_hill = nums[i] > nums[next_left_index]

    next_right_index = nums[i + 1..].index { |n| n != nums[i] }
    next false if next_right_index.nil?

    next_right_index += i + 1
    next false if right_index === next_right_index
    next false if (is_hill && nums[i] < nums[next_right_index]) || (!is_hill && nums[i] > nums[next_right_index])

    right_index = next_right_index
    true
  end
end
