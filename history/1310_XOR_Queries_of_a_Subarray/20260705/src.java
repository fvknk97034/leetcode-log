class Solution {
  public int[] xorQueries(int[] arr, int[][] queries) {
    int[] prefixXorSums = new int[arr.length + 1];
    for (int i = 1; i < prefixXorSums.length; i++)
      prefixXorSums[i] = prefixXorSums[i - 1] ^ arr[i - 1];

    int[] results = new int[queries.length];
    for (int i = 0; i < queries.length; i++)
      results[i] = prefixXorSums[queries[i][1] + 1] ^ prefixXorSums[queries[i][0]];

    return results;
  }
}
