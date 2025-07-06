# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  results = []
  max = arr[1..].max || -1
  arr.each_with_index do |n, i|
    max = arr[i + 1..].max || -1 if max === n
    results << max
  end
  results
end
