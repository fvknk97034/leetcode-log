# 3127. Make a Square with the Same Color

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
  public boolean canMakeSquare(char[][] grid) {
    for (int i = 0; i < grid.length - 1; i++) {
      for (int j = 0; j < grid[i].length - 1; j++) {
        if (countWhite(grid, i, j) != 2)
          return true;
      }
    }

    return false;
  }

  private int countWhite(char[][] grid, int start_i, int start_j) {
    int result = 0;
    for (int i = start_i; i < start_i + 2; i++) {
      for (int j = start_j; j < start_j + 2; j++) {
        if (grid[i][j] == 'W') result++;
      }
    }

    return result;
  }
}
```
