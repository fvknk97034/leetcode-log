# 3487. Maximum Unique Subarray Sum After Deletion

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
def max_sum(nums)
  return nums.max if nums.all?(&:negative?)

  nums.filter(&:positive?).uniq.sum
end
```
