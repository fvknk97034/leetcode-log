# 3701. Compute Alternating Sum

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
def alternating_sum(nums)
  result = 0
  is_add = true
  while (n = nums.shift)
    n *= -1 unless is_add

    result += n
    is_add = !is_add
  end
  result
end
```
