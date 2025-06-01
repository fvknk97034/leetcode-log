# 2180. Count Integers With Even Digit Sum

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
def count_even(num)
  (1..num).count { |n| n.digits.sum { |m| m.to_i }.even? } 
end
```
