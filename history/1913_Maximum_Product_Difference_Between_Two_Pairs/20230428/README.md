# 1913. Maximum Product Difference Between Two Pairs

## Intuition

- 最大値、最小値をそれぞれ2個ずつ取得するため、`max`、`min`を使用

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
def max_product_difference(nums)
  max1, max2 = nums.max(2)
  min1, min2 = nums.min(2)

  max1 * max2 - min1 * min2
end
```
