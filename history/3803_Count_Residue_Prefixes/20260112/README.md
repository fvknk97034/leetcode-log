# 3803. Count Residue Prefixes

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
    def residuePrefixes(self, s: str) -> int:
        chars = set()
        result = 0
        for i in range(len(s)):
            chars.add(s[i])
            if len(chars) == int((i + 1) % 3):
                result += 1

        return result
```
