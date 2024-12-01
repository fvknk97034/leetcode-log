# @param {Integer[]} height
# @return {Integer}
def trap(height)
  water_height = 0
  water_counter = 0
  len = height.length
  height.each_with_index do |h, i|
    if i + 2 < len && h >= water_height
      right_height = height[(i + 2)..-1].max
      water_height = h < right_height ? h : right_height
    end
    break if i + 1 >= len || height[(i + 1)..-1].max < water_height

    water_counter += water_height - h if water_height > h
  end
  water_counter
end
