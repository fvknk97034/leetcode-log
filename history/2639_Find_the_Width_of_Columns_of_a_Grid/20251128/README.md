# 2639. Find the Width of Columns of a Grid

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```python
class Solution:
    def findColumnWidth(self, grid: List[List[int]]) -> List[int]:
        results = [-1] * len(grid[0])
        for row in grid:
            for i, cell in enumerate(row):
                results[i] = max(results[i], len(str(cell)))

        return results
```
