# 747. Largest Number At Least Twice of Others

## Intuition

- 配列の最大値と2番目に大きな値を`max`で抽出
- 配列内のインデックスは`index`で取得

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
def dominant_index(nums)
  max, n = nums.max(2)
  max < n * 2 ? -1 : nums.index(max)
end
```
