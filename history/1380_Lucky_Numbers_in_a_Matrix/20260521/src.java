class Solution {
  public List<Integer> luckyNumbers(int[][] matrix) {
    List<Integer> results = new ArrayList<>();

    for (int i = 0; i < matrix.length; i++) {
      int min = matrix[i][0], minIndex = 0;
      for (int j = 1; j < matrix[i].length; j++) {
        if (matrix[i][j] < min) {
          min = matrix[i][j];
          minIndex = j;
        }
      }

      boolean isMax = true;
      for (int k = 0; k < matrix.length; k++) {
        if (matrix[k][minIndex] > min) {
          isMax = false;
          break;
        }
      }
      if (!isMax)
        continue;

      results.add(min);
    }

    return results;
  }
}
