# 1984. Minimum Difference Between Highest and Lowest of K Scores

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
    def minimumDifference(self, nums: List[int], k: int) -> int:
        if k == 1:
            return 0

        nums.sort()
        result = nums[k - 1] - nums[0]
        for i in range(k, len(nums)):
            result = min(nums[i] - nums[i - k + 1], result)

        return result
```
