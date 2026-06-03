class Solution {
  public boolean satisfiesConditions(int[][] grid) {
    for (int j = 1; j < grid[0].length; j++) {
      if (grid[0][j] == grid[0][j - 1])
        return false;
    }

    for (int i = 1; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] != grid[0][j])
          return false;
      }
    }

    return true;
  }
}
