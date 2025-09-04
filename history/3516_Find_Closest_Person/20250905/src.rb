# @param {Integer} x
# @param {Integer} y
# @param {Integer} z
# @return {Integer}
def find_closest(x, y, z)
  x_diff = (z - x).abs
  y_diff = (z - y).abs

  return 1 if x_diff < y_diff
  return 2 if x_diff > y_diff

  0
end
