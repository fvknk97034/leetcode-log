# 2248. Intersection of Multiple Arrays

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
# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
  nums.inject(:&).sort
end
```
