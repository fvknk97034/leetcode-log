# 495. Teemo Attacking

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
    def findPoisonedDuration(self, timeSeries: List[int], duration: int) -> int:
        if len(timeSeries) == 1:
            return duration
        
        return duration + sum(timeSeries[i] - timeSeries[i - 1] if timeSeries[i] - timeSeries[i - 1] < duration else duration for i in range(1, len(timeSeries)))
```
