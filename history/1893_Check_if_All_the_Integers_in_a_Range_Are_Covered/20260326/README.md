# 1893. Check if All the Integers in a Range Are Covered

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
    def isCovered(self, ranges: List[List[int]], left: int, right: int) -> bool:
        minLeft = ranges[0][0]
        maxRight = ranges[0][1]
        for r in ranges[1:]:
            if r[0] < minLeft and r[1] >= minLeft - 1:
                minLeft = r[0]
            
            if r[1] > maxRight and r[0] <= maxRight + 1:
                maxRight = r[1]

        return minLeft <= left and maxRight >= right
```
