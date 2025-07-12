# @param {String} number
# @return {String}
def reformat_number(number)
  number.delete!('-')
  number.delete!(' ')

  return number if number.length < 4

  slices = number.chars.each_slice(3).map(&:join)
  return slices.join('-') unless slices[-2, 2].sum(&:length) === 4

  slices[-2].concat(slices[-1])
  slices.pop
  slices[-1] = slices[-1].chars.each_slice(2).map(&:join)
  slices.join('-')
end
