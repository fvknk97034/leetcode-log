# 2540. Minimum Common Value

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
    def getCommon(self, nums1: List[int], nums2: List[int]) -> int:
        commons = set(nums1) & set(nums2)

        return min(commons) if commons else -1
```
