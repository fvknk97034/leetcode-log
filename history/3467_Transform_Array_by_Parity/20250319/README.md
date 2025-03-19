# 3467. Transform Array by Parity

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
def transform_array(nums)
  even_count = nums.count(&:even?)
  ([0] * even_count).concat([1] * (nums.length - even_count))
end
```
