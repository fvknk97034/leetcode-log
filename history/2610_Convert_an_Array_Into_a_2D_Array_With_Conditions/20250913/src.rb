# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
  results = []

  num_counts = nums.tally
  until num_counts === {}
    results << num_counts.keys

    num_counts.reject! { |k, v| v === 1 }
    num_counts.each { |k, _v| num_counts[k] -= 1 }
  end
  results
end
