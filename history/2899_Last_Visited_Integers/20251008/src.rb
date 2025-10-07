# @param {Integer[]} nums
# @return {Integer[]}
def last_visited_integers(nums)
  seen = []
  ans = []
  k = 0
  nums.each do |n|
    unless n === -1
      seen.unshift(n)
      k = 0
      next
    end

    k += 1
    ans << (seen[k - 1] || -1)
  end
  ans
end
