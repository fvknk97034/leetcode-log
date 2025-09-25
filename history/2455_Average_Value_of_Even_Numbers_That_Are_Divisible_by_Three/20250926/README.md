# 2455. Average Value of Even Numbers That Are Divisible by Three

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
def average_value(nums)
  nums.filter! { |n| n % 6 === 0 }
  return 0 if nums === []

  nums.sum / nums.length
end
```
