# @param {Integer[]} arr
# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def count_good_triplets(arr, a, b, c)
  arr.combination(3).count do |x, y, z|
    (x - y).abs <= a && (y - z).abs <= b && (x - z).abs <= c
  end
end
