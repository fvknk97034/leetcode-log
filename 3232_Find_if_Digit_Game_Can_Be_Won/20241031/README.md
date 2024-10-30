# 3232. Find if Digit Game Can Be Won

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
def can_alice_win(nums)
  nums.filter { |n| n < 10 }.sum != nums.filter { |n| n >= 10 }.sum
end
```
