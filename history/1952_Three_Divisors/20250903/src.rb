# @param {Integer} n
# @return {Boolean}
def is_three(n)
  sqrt = Math.sqrt(n)
  return false unless sqrt - sqrt.to_i === 0

  (1..sqrt).count { |d| n % d === 0 } + 1 === 3
end
