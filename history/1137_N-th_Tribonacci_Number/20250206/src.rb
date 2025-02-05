# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  numbers = [0, 1, 1]
  return numbers[n] if n <= 2

  (3..n).each do |i|
    numbers << numbers.sum
    numbers.shift
  end
  numbers[-1]
end
