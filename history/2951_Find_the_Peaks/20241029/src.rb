# @param {Integer[]} mountain
# @return {Integer[]}
def find_peaks(mountain)
  results = []
  (1...(mountain.length - 1)).each do |i|
    results << i if mountain[i - 1] < mountain[i] && mountain[i] > mountain[i + 1]
  end
  results
end
