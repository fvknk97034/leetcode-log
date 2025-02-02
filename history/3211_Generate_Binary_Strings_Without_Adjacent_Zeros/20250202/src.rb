# @param {Integer} n
# @return {String[]}
def valid_strings(n)
  results = ['0', '1']
  len = 2
  until len > n
    l = results.length
    (0...l).each do |i|
      s = results[i]
      next results[i] = "#{s}1" if s[-1] === '0'

      results[i] = "#{s}0"
      results << "#{s}1"
    end

    len += 1
  end
  results
end
