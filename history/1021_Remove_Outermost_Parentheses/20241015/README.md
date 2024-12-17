# 1021. Remove Outermost Parentheses

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
```
