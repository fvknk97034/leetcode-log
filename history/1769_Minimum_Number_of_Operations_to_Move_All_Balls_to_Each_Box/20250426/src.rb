# @param {String} boxes
# @return {Integer[]}
def min_operations(boxes)
  has_ball_indexes = []
  boxes.chars.each_with_index do |v, i|
    next if v === "0"

    has_ball_indexes << i
  end

  (0...boxes.length).map do |i|
    has_ball_indexes.sum { |j| (i - j).abs }
  end
end
