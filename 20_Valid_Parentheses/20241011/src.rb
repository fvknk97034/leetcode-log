# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  before_brackets = ['(', '[', '{']
  bracket_pair = { '(' => ')', '[' => ']', '{' => '}' }

  s.each_char do |b|
    if before_brackets.include?(b)
      stack << b
      next
    end

    return false until b === bracket_pair[stack.pop]
  end
  stack.empty?
end
