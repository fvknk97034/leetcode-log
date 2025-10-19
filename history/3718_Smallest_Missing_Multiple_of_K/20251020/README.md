# 3718. Smallest Missing Multiple of K

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
# @return {Integer}
def missing_multiple(nums, k)
  n = 1
  while nums.include?(k * n)
    n += 1
  end
  k * n
end
```
