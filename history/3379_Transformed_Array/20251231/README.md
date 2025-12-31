# 3379. Transformed Array

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
    def constructTransformedArray(self, nums: List[int]) -> List[int]:
        return [num if num == 0 else nums[(i + num) % len(nums)] for i, num in enumerate(nums)]

```
