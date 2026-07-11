class Solution {
  public int countServers(int[][] grid) {
    int[] rowCounts = new int[grid.length];
    int[] columnCounts = new int[grid[0].length];
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == 0)
          continue;

        rowCounts[i]++;
        columnCounts[j]++;
      }
    }

    int result = 0;
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == 0)
          continue;

        if (rowCounts[i] > 1 || columnCounts[j] > 1)
          result++;
      }
    }

    return result;
  }
}
