# @param {String} s
# @param {Integer} k
# @return {String}
def get_encrypted_string(s, k)
  len = s.length
  return s if k == len

  array = s.each_char.to_a
  decrypted_s = ''
  len.times do |i|
    n = i + k - ((i + k) / len).floor * len
    decrypted_s << array[n]
  end
  decrypted_s
end
