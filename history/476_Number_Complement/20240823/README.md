# 476. Number Complement

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
# @param {Integer} num
# @return {Integer}
def find_complement(num)
  result = ''
  num.to_s(2).each_char { |n| result << (n == '0' ? '1' : '0') }
  result.to_i(2)
end
```
