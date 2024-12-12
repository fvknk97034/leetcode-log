# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hash = numbers.tally
  array = hash.keys
  hash.each do |k, v|
    array << k unless v === 1
  end
  array.combination(2) do |a, b|
    i = numbers.index(a)
    j = a === b ? numbers[i + 1..].index(b) + i + 1 : numbers.index(b)
    return [i + 1, j + 1] if a + b === target
  end
  []
end
