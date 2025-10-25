# 1009. Complement of Base 10 Integer

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
# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
  n.to_s(2).chars.map { |c| c === '1' ? '0' : '1' }.join.to_i(2)
end
```
