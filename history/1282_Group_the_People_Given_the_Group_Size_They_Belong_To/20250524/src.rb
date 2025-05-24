# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
  results = []
  groups = {}
  group_sizes.each_with_index do |p, i|
    groups[p] ||= []
    groups[p] << i

    next unless groups[p].length === p

    results << groups[p]
    groups[p] = []
  end
  results
end
