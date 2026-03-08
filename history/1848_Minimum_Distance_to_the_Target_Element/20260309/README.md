# 1848. Minimum Distance to the Target Element

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
    def getMinDistance(self, nums: List[int], target: int, start: int) -> int:
        if target == nums[start]:
            return 0

        result = len(nums)
        for i, n in enumerate(nums):
            if n != target:
                continue

            distance = abs(i - start)
            if distance < result:
                result = distance

        return result
```
