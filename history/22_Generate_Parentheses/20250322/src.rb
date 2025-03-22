# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n, str = '', left = 0, right = 0)
  return [str] if left === right && left === n
  return [str + ')' * (left - right)] if left === n
  return generate_parenthesis(n, str + '(', left + 1, right) if left === right

  [
    generate_parenthesis(n, str + '(', left + 1, right),
    generate_parenthesis(n, str + ')', left, right + 1)
  ].flatten
end
