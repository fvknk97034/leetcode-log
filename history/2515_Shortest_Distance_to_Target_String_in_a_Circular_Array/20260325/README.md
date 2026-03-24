# 2515. Shortest Distance to Target String in a Circular Array

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
    def closestTarget(self, words: List[str], target: str, startIndex: int) -> int:
        l = len(words)
        for result in range(max(startIndex, l - startIndex)):
            if (target in [words[(startIndex + result) % l], words[(startIndex - result) % l]]):
                return result

        return -1
        
```
