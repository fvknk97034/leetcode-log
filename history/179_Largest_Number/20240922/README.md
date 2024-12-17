# 179. Largest Number

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
# @return {String}
def largest_number(nums)
  return '0' if nums.all?(0)
  
  nums.map(&:to_s).sort{ |a, b| b + a <=> a + b }.join
end
```
