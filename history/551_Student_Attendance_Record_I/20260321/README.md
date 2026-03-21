# 551. Student Attendance Record I

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
    def checkRecord(self, s: str) -> bool:
        counts = {
            'A': 0,
            'L': 0
        }
        for c in s:
            if c != 'L':
                counts['L'] = 0

            if c == 'P':
                continue

            counts[c] += 1
            if counts['A'] >= 2:
                return False
            
            if counts['L'] >= 3:
                return False

        return True
```
