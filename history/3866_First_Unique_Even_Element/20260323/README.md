# 3866. First Unique Even Element

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
    def firstUniqueEven(self, nums: list[int]) -> int:
        return next((n for n in nums if n % 2 == 0 and nums.count(n) == 1), -1)
```
