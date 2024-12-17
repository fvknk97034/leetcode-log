# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
  return false if num == 1

  sum = 0
  (1..Math.sqrt(num).floor).each do |n|
    next if num % n != 0

    sum += n
    sum += num / n if n > 1 && n != num / n
  end

  sum == num
end
