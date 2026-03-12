# 1796. Second Largest Digit in a String

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
    def secondHighest(self, s: str) -> int:
        hasDigits = [False for _ in range(10)]
        for c in s:
            if c.isdigit():
                hasDigits[int(c)] = True
        
        count = 0
        for i in range(9, -1, -1):
            if not hasDigits[i]:
                continue

            count += 1
            if count == 2:
                return i

        return -1
```
