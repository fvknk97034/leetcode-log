# 3754. Concatenate Non-Zero Digits and Multiply by Sum I

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
    def sumAndMultiply(self, n: int) -> int:
        x = '0'
        sum = 0
        for d in str(n):
            if d == '0':
                continue
            
            x += d
            sum += int(d)
        
        return int(x) * sum
```
