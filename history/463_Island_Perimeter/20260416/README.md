# 463. Island Perimeter

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
  public int islandPerimeter(int[][] grid) {
    int result = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] == 0)
          continue;

        int len = 4;
        if (j > 0 && grid[i][j - 1] == 1) len--;
        if (j < grid[i].length - 1 && grid[i][j + 1] == 1) len--;
        if (i > 0 && grid[i - 1][j] == 1) len--;
        if (i < grid.length - 1 && grid[i + 1][j] == 1) len--;

        result += len;
      }
    }

    return result;
  }
}
```
