# @param {Integer} n
# @param {Integer} w
# @param {Integer} max_weight
# @return {Integer}
def max_containers(n, w, max_weight)
  [max_weight / w, n * n].min
end
