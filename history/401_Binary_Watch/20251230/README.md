# 401. Binary Watch

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
    def readBinaryWatch(self, turnedOn: int) -> List[str]:
        if turnedOn >= 9:
            return []
        
        hour_bits = [1, 2, 4, 8]
        minute_bits = [1, 2, 4, 8, 16, 32]
        
        results = []
        for i in range(turnedOn + 1):
            hour_count = i
            minute_count = turnedOn - i
            for hours in combinations(hour_bits, hour_count):
                hour = sum(hours)
                if hour >= 12:
                    break

                for minutes in combinations(minute_bits, minute_count):
                    minute = sum(minutes)
                    if minute >= 60:
                        break

                    results.append(f"{hour}:{minute:02d}")

        return results
```
