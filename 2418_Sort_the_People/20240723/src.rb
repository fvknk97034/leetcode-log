# @param {String[]} names
# @param {Integer[]} heights
# @return {String[]}
def sort_people(names, heights)
  data = [names, heights].transpose.sort_by { |value| -value[1] }
  p data.map { |d| d[0] }
end
