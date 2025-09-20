# @param {Integer[]} nums
# @return {Boolean}
def check_prime_frequency(nums)
  nums.tally.values.uniq.any? do |c|
    c > 1 && (2..Math.sqrt(c)).none? { |d| c % d === 0 }
  end
end
