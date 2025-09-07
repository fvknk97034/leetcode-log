# @param {String} s
# @return {String}
def longest_nice_substring(s)
  chars = s.chars
  (2..s.length).reverse_each do |len|
    result = chars.each_cons(len).find { |cs| cs.all? { |c| cs.include?(c.swapcase) } }&.join
    return result unless result.nil?
  end
  ''
end
