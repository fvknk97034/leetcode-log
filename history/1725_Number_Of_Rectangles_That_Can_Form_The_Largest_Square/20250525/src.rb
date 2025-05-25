# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
  l = rectangles.max_by { |r| r.min }.min
  rectangles.count { |r| r.min === l }
end
