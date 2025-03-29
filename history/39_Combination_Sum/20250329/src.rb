# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
  results = []

  sums = candidates.map { |c| [c] }
  until sums.all? { |s| s.sum > target }
    result = sums.filter { |s| s.sum === target }
    results.concat(result.map { |r| r.sort }).uniq!
    sums.reject! { |s| s.sum >= target }

    sums = candidates.flat_map { |c| sums.map { |s| s + [c] } }
  end

  results.filter { |s| s.sum === target }
end
