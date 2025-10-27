# 1446. Consecutive Characters

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
# @return {Integer}
def max_power(s)
  s.bytes.slice_when { |a, b| a != b }.inject(0) do |result, a|
    result = [result, a.length].max
  end
end
```
