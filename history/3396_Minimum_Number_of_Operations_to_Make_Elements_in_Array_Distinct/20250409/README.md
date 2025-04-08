# 3396. Minimum Number of Operations to Make Elements in Array Distinct

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
def minimum_operations(nums)
  result = 0
  until nums === nums.uniq
    nums.shift(3)
    result += 1
  end
  result
end
```
