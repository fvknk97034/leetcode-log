# 3827. Count Monobit Integers

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
    def countMonobit(self, n: int) -> int:
        result = 0
        while 2 ** result - 1 <= n:
            result += 1

        return result
```
