# 598. Range Addition II

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```python
class Solution:
    def maxCount(self, m: int, n: int, ops: List[List[int]]) -> int:
        if m == 1 and n == 1:
            return 1

        if len(ops) == 0:
            return m * n

        return min(map(lambda a: a[0], ops)) * min(map(lambda a: a[1], ops))
```
