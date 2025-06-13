# 3392. Count Subarrays of Length Three With a Condition

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
def count_subarrays(nums)
  nums.each_cons(3).count { |n1, n2, n3| (n1 + n3) * 2 === n2 }
end
```
