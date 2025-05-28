# @param {String} num
# @return {String}
def largest_good_integer(num)
  result = ''
  tmp = ''
  num.each_char do |n|
    next tmp = n unless tmp[-1] === n

    tmp << n

    next unless tmp.length === 3

    if result < tmp
      result = tmp
      tmp = ''
    end
  end

  result
end
