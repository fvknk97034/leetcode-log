# 1207. Unique Number of Occurrences

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
# @return {Boolean}
def unique_occurrences(arr)
  count = arr.tally
  count.values.uniq.length === count.length
end
```
