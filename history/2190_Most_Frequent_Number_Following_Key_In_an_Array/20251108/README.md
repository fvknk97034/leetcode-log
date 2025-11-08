# 2190. Most Frequent Number Following Key In an Array

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
# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
  counts = {}
  nums.each_cons(2) do |a, b|
    next unless a === key

    counts[b] ||= 0
    counts[b] += 1
  end
  counts.max_by { |k, v| v }[0]
end
```
