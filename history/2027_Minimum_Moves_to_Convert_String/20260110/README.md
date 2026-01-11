# 2027. Minimum Moves to Convert String

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
    def minimumMoves(self, s: str) -> int:
        result = 0

        index = s.find('X')
        while index >= 0:
            result += 1

            index += 3
            index = s.find('X', index)

        return result
```
