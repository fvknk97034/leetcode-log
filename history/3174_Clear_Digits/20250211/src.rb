# @param {String} s
# @return {String}
def clear_digits(s)
  chars = s.chars

  i = 0
  non_digit_indexes = []
  until i === chars.length
    c = chars[i]
    unless c =~ /\d/
      non_digit_indexes << i
      i += 1
      next
    end

    chars.delete_at(i)
    chars.delete_at(non_digit_indexes.pop)
    i -= 1
  end
  chars.join('')
end
