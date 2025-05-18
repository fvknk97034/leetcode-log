# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
  queries.map do |cx, cy, r|
    points.count do |px, py|
      Math.sqrt((cx - px) ** 2 + (cy - py) ** 2) <= r
    end
  end
end
