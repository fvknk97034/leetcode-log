# 1184. Distance Between Bus Stops

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
    def distanceBetweenBusStops(self, distance: List[int], start: int, destination: int) -> int:
        if start >= destination:
            start, destination = [destination, start]

        return min(sum(distance[start:destination]), sum(distance[:start]) + sum(distance[destination:]))
```
