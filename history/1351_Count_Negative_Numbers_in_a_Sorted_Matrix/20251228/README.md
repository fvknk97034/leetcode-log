# 1351. Count Negative Numbers in a Sorted Matrix

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
    def countNegatives(self, grid: List[List[int]]) -> int:
        result = 0
        for row in grid:
            result += sum(cell < 0 for cell in row)

        return result
```
