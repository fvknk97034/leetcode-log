# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  joined_s = s.delete('^a-zA-Z0-9').downcase
  joined_s === joined_s.reverse
end
