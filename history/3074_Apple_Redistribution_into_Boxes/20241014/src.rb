# @param {Integer[]} apple
# @param {Integer[]} capacity
# @return {Integer}
def minimum_boxes(apple, capacity)
  apple_num = apple.sum
  box_num = 0
  capacity.sort_by! { |c| -c }
  
  capacity.each do |c|
    box_num += 1
    apple_num -= c
    return box_num if apple_num <= 0
  end
  box_num
end
