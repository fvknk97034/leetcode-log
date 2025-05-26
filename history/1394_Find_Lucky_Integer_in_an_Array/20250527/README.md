# 1394. Find Lucky Integer in an Array

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
# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  arr.tally.filter { |k, v| k === v }.max&.first || -1
end
```
