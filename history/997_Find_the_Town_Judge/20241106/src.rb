# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  people = {}
  (1..n).each { |p| people[p] = [] }

  trust.each do |t, u|
    people[t] << u
  end
  candidates = (1..n).to_a - people.filter{ |_k, v| v.length > 0 }.keys
  return -1 if candidates.length === 0

  judges = candidates.filter{ |c| people.filter{ |k, _v| k != c }.all? { |k, v| v.include?(c) }}

  judges.length === 1 ? judges[0] : -1
end
