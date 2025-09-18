# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  directions = {
    N: 1,
    E: 0,
    S: 1,
    W: 0
  }
  moves = {
    N: 1,
    E: 1,
    S: -1,
    W: -1
  }

  last_point = [0, 0]
  points = Set.new()
  points << last_point
  path.each_char do |p|
    next_point = last_point.map { _1 }
    next_point[directions[p.to_sym]] += moves[p.to_sym]

    return true if points.include?(next_point)

    points << next_point
    last_point = next_point
  end
  false
end
