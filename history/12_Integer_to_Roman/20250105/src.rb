# @param {Integer} num
# @return {String}
def int_to_roman(num)
  chars = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L',
    10 => 'X',
    5 => 'V',
    1 => 'I'
  }
  num_chars = num.to_s.chars
  digit_index = num_chars.length - 1
  result = ''
  num_chars.each do |d|
    if d === '9'
      result << chars[10.pow(digit_index)]
      result << chars[10.pow(digit_index) * 10]
    elsif d === '4'
      result << chars[10.pow(digit_index)]
      result << chars[5 * 10.pow(digit_index)]
    elsif d.to_i >= 5
      result << chars[5 * 10.pow(digit_index)]
      result << chars[10.pow(digit_index)] * (d.to_i - 5)
    else
      result << chars[10.pow(digit_index)] * d.to_i
    end
    digit_index -= 1
  end
  result
end
