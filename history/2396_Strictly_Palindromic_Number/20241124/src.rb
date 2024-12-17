# @param {Integer} n
# @return {Boolean}
def is_strictly_palindromic(n)
  (2..(n - 2)).each do |m|
    base_m_num = n.to_s(m)
    return false if base_m_num != base_m_num.reverse
  end
  true
end
