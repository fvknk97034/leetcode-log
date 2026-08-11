class Solution {
  public int[] findDegrees(int[][] matrix) {
    int[] results = new int[matrix[0].length];
    for (int[] edges: matrix) {
      for (int i = 0; i < edges.length; i++) {
        results[i] += edges[i];
      }
    }

    return results;
  }
}
