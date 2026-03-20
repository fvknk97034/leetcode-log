# 3402. Minimum Operations to Make Columns Strictly Increasing

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
    def minimumOperations(self, grid: List[List[int]]) -> int:
        result = 0
        for i in range(1, len(grid)):
            for j in range(len(grid[i])):
                next_num = max(grid[i - 1][j] + 1, grid[i][j])
                result += next_num - grid[i][j]
                grid[i][j] = next_num 

        return result
```
