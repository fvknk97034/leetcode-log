class Solution {
  public int maxEqualRowsAfterFlips(int[][] matrix) {
    Map<String, Integer> countMap = new HashMap<>();
    int len = matrix[0].length;
    int result = 1;
    for (int[] row: matrix) {
      boolean flip = row[0] == 0;
      char[] pattern = new char[len];
      for (int i = 0; i < len; i++)
        pattern[i] = (char)('0' + (flip ? row[i] ^ 1 : row[i]));

      result = Math.max(
        result,
        countMap.merge(new String(pattern), 1, Integer::sum)
      );
    }

    return result;
  }
}
