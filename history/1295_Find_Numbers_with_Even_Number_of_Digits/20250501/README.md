# 1295. Find Numbers with Even Number of Digits

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
# @return {Integer}
def find_numbers(nums)
  nums.count { |n| (n >= 10 && n < 100) || (n >= 1000 && n < 10000) || n === 100000 }
end
```
