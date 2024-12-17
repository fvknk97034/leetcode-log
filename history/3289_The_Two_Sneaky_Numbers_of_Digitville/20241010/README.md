# 3289. The Two Sneaky Numbers of Digitville

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
def get_sneaky_numbers(nums)
  nums.tally.filter { |k, v| v == 2 }.keys
end
```
