# 1822. Sign of the Product of an Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- 掛け算の結果そのものではなく、結果の正負のみが判定に関わるので、負の数の数で返却する値を変動させる

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
  return 0 if nums.include?(0)
  return 1 if nums.count {|n| n < 0} % 2 == 0
  return -1
end
```
