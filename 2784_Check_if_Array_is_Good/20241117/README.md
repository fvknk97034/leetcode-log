# 2784. Check if Array is Good

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
def is_good(nums)
  max = nums.max
  nums.sort === (1..max).to_a.push(max)
end
```
