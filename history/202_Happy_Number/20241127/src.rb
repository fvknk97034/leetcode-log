# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  old_results = []
  until n === 1
    old_results << n

    n = n.to_s.chars.sum do |m|
      m.to_i.pow(2)
    end
    break if old_results.include?(n)
  end
  n === 1
end
