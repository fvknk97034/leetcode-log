# 2923. Find Champion I

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
class Solution {
  public int findChampion(int[][] grid) {
    int[] winCounts = new int[grid.length];
    int result = 0;
    int max = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = i + 1; j < grid[i].length; j++) {
        if (grid[i][j] == 1) {
          winCounts[i]++;
          continue;
        }

        winCounts[j]++;
      }

      if (winCounts[i] <= max) {
        continue;
      }

      result = i;
      max = winCounts[i];
    }

    return result;
  }
}
```
