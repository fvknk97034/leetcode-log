# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def find_the_prefix_common_array(a, b)
  (1..a.length).map do |len|
    len - a[...len].difference(b[...len]).length
  end
end
