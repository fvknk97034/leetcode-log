# @param {Integer[]} digits
# @return {Integer}
def total_numbers(digits)
  evens = digits.filter(&:even?)
  evens.flat_map do |e|
    i = digits.index(e)
    other_nums = digits[...i].concat(digits[(i + 1)..])
    other_nums.permutation(2)
              .reject { |p| p[0] === 0 }
              .map { |p| p << e }
  end.uniq.count
end
