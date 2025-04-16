# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
  return 1 if high_limit < 10

  boxes = [0]
  (low_limit..high_limit).each do |n|
    sum = n.digits.sum
    boxes[sum] = (boxes[sum] || 0) + 1
  end
  boxes.max_by { |n| n || 0 }
end
