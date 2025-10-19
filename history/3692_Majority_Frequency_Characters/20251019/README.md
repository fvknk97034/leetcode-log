# 3692. Majority Frequency Characters

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
def majority_frequency_group(s)
  s.chars
   .tally
   .group_by { |k, v| v }
   .max_by { |k, v| [v.length, k] }[-1]
   .map(&:first)
   .join
end
```
