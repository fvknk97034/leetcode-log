# 3370. Smallest Number With All Set Bits

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
def smallest_number(n)
  (1..10).each do |p|
    result = 2.pow(p) - 1
    return result if n <= result
  end
end
```
