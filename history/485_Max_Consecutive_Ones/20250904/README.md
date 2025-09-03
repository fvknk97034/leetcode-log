# 485. Max Consecutive Ones

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
def find_max_consecutive_ones(nums)
  max_len = 0
  len = 0
  nums.each do |n|
    next len += 1 if n === 1
    next if len === 0

    max_len = [len, max_len].max
    len = 0
  end
  [len, max_len].max
end
```
