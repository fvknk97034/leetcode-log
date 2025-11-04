# @param {Integer} n
# @param {Integer[]} rounds
# @return {Integer[]}
def most_visited(n, rounds)
  counts = {}
  (1..n).each { |n| counts[n] = 0 }
  counts[rounds[0]] += 1

  rounds.each_cons(2) do |r1, r2|
    if r1 < r2
      ((r1 + 1)..r2).each { |r| counts[r] += 1 }
      next
    end

    ((r1 + 1)..n).each { |r| counts[r] += 1 }
    (1..r2).each { |r| counts[r] += 1 }
  end
  max = counts.max_by { |_k, v| v }[1]
  counts.filter { |_k, v| v === max }.keys
end
