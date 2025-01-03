# 3264. Final Array State After K Multiplication Operations

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
# @param {Integer} k
# @param {Integer} multiplier
# @return {Integer[]}
def get_final_state(nums, k, multiplier)
  until k === 0
    min = nums.min
    index = nums.index(min)
    nums[index] *= multiplier
    k -= 1
  end
  nums
end
```
