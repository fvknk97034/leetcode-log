# 2582. Pass the Pillow

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
    def passThePillow(self, n: int, time: int) -> int:
        return 1 + time % (n - 1) if math.floor(time / (n - 1)) % 2 == 0 else n - time % (n - 1)
```
