# 455. Assign Cookies

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
    def findContentChildren(self, g: List[int], s: List[int]) -> int:
        if s == []:
            return 0

        g.sort()
        s.sort()

        i, j, result = 0, 0, 0
        while i < len(g) and j < len(s):
            if g[i] <= s[j]:
                result += 1
                i += 1
            
            j += 1
            
        return result
```
