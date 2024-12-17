# 1920. Build Array from Permutation

## Intuition

- 配列が入力して配列を出力するので`map`を使用

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
def build_array(nums)
  nums.map{ |n| nums[n] }
end
```
