# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
  result = 0
  operations.each do |o|
    if o.include?('+')
      result += 1
    else
      result -= 1
    end
  end
  result
end
