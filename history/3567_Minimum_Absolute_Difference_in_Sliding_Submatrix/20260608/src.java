class Solution {
  public int[][] minAbsDiff(int[][] grid, int k) {
    int[][] results = new int[grid.length - k + 1][grid[0].length - k + 1];
    if (k == 1)
      return results;

    for (int i = 0; i <= grid.length - k; i++) {
      for (int j = 0; j <= grid[0].length - k; j++) {
        results[i][j] = minAbs(grid, i, j, k);
      }
    }

    return results;
  }

  private int minAbs(int[][] grid, int row_index, int col_index, int k) {
    int[] nums = new int[k * k];
    for (int i = row_index; i < row_index + k; i++) {
      for (int j = col_index; j < col_index + k; j++) {
        nums[k * (i - row_index) + j - col_index] = grid[i][j];
      }
    }

    Arrays.sort(nums);
    if (nums[0] == nums[nums.length - 1])
      return 0;

    int result = Integer.MAX_VALUE;
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == nums[i - 1])
        continue;

      result = Math.min(result, nums[i] - nums[i - 1]);
    }

    return result;
  }
}
