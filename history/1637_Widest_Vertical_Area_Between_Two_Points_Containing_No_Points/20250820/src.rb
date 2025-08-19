# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
  x1, x2 = points.map(&:first).sort.each_cons(2).max_by { |x1, x2| x2 - x1 }
  x2 - x1
end
