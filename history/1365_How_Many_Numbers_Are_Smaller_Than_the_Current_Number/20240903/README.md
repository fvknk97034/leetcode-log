# 1365. How Many Numbers Are Smaller Than the Current Number

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
# @return {Integer[]}
def smaller_numbers_than_current(nums)
  nums.map{ |n| nums.count { |m| n > m } }
end
```
