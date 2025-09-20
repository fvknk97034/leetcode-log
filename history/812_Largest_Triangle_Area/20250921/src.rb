# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
  result = 0
  points.sort_by { |x, _y| x }.combination(3).map do |a, b, c|
    if upper_line?(b, a, c)
      s = integrate(a, b) + integrate(b, c) - integrate(a, c)
      result = [s, result].max
      next
    end

    s = integrate(a, c) - integrate(a, b) - integrate(b, c)
    result = [s, result].max
  end
  result
end

def integrate(point_1, point_2)
  width = (point_2[0] - point_1[0]).abs
  square_height = [point_1[1], point_2[1]].min
  triangle_height = (point_1[1] - point_2[1]).abs

  (width * square_height).to_f +  (width * triangle_height).to_f / 2
end

def upper_line?(target, point_1, point_2)
  left_point, right_point = [point_1, point_2].sort_by { |x, _y| x }
  proportionality_value = (right_point[1] - left_point[1]).to_f / (right_point[0] - left_point[0])

  target[1] > (target[0] - left_point[0]) * proportionality_value + left_point[1]
end
