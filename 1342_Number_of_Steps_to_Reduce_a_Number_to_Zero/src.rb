# @param {Integer} num
# @return {Integer}
def number_of_steps(num)
  i = 0
  while num > 0 do
    if num.even?
      num /= 2
    else
      num -= 1
    end

    i += 1
  end
  i
end
