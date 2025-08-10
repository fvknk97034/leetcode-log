# 1200. Minimum Absolute Difference

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
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr.sort!
  diff = arr[1] - arr[0]
  results = []
  min_combinations = arr.each_cons(2).each do |a, b|
    abs = b - a
    next if diff < abs
    next results << [a, b] if diff === abs

    diff = abs
    results = [[a, b]]
  end
  results
end
```
