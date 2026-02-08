# 3833. Count Dominant Indices

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Python
class Solution:
    def dominantIndices(self, nums: List[int]) -> int:
        n = len(nums)
        total = sum(nums)
        result = 0
        for i in range(len(nums) - 1):
            total -= nums[i]
            n -= 1
            if nums[i] > total / n:
                result += 1

        return result
```
