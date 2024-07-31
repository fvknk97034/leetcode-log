# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  return false if n < 1

  prime_factors = [5, 3, 2]

  prime_factors.each do |p|
    while(n >= p && n % p == 0) do
      n /= p
    end
  end

  n == 1
end
