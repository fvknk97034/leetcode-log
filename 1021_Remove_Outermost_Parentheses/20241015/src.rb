# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  parentheses_count = 0
  result = ''
  s.each_char do |p|
    result << p if parentheses_count > 0 && p === '('
    result << p if parentheses_count > 1 && p === ')'

    if p === '('
      parentheses_count += 1
      next
    end

    parentheses_count -= 1
  end
  result
end
