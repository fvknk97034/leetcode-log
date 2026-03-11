# 504. Base 7

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
    def convertToBase7(self, num: int) -> str:
        if num == 0:
            return '0'

        bits = []
        is_negative = num < 0
        num = abs(num)
        while num != 0:
            bits.append(str(num % 7))
            num = int(num / 7)
        
        if is_negative:
            bits.append('-')

        return ''.join(reversed(bits))
```
