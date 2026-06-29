class Solution {
  public int minimumArea(int[][] grid) {
    int startRow = grid.length - 1;
    int endRow = 0;
    int startColumn = grid[0].length - 1;
    int endColumn = 0;

    for (int i = 0; i < grid.length; i++) {
      int firstIndex = -1, lastIndex = -1;
      for (int j = 0; j < grid[i].length; j++) {
        if (grid[i][j] == 0)
          continue;

        if (firstIndex == -1)
          firstIndex = j;

        lastIndex = j;
      }

      if (firstIndex == -1)
        continue;

      startRow = Math.min(startRow, i);
      endRow = Math.max(endRow, i);

      startColumn = Math.min(startColumn, firstIndex);
      endColumn = Math.max(endColumn, lastIndex);
    }

    return (endRow - startRow + 1) * (endColumn - startColumn + 1);
  }
}
