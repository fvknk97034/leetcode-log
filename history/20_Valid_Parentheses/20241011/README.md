# 20. Valid Parentheses

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
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
```
