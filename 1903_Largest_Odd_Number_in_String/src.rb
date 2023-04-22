# @param {String} num
# @return {String}
def largest_odd_number(num)
  len = num.length
  num[0...(len - (num.reverse.chars.find_index{ |n| n.to_i.odd? } || len))] || ''
end
