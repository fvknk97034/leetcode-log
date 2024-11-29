# @param {String} s
# @return {Integer}
def roman_to_int(s)
  subtraction = {
    CM: 900,
    CD: 400,
    XC: 90,
    XL: 40,
    IX: 9,
    IV: 4
  }
  hash = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000
  }
  sum = 0
  subtraction.each do |k, v|
    next unless s.include?(k.to_s)
    sum += v
    s.gsub!(k.to_s, '')
  end
  sum += s.chars.tally.sum { hash[_1.to_sym] * _2 }
end
