# 2206. Divide Array Into Equal Pairs

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
# @return {Boolean}
def divide_array(nums)
  nums.sort!
  nums.slice_when { |a, b| a < b }.all? { |a| a.length % 2 == 0}
end
```
