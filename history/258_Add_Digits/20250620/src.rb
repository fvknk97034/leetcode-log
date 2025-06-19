# @param {Integer} num
# @return {Integer}
def add_digits(num)
  until num < 10
    num = num.digits.sum
  end
  num
end
