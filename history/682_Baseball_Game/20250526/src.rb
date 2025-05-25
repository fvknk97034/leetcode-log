# @param {String[]} operations
# @return {Integer}
def cal_points(operations)
  records = []
  operations.each do |o|
    next records << records[-2..-1].sum if o === '+'
    next records << records[-1] * 2 if o === 'D'
    next records.pop if o === 'C'

    records << o.to_i
  end

  records.sum
end
