class Solution {
  public int minCostToMoveChips(int[] position) {
    int[] sums = new int[2];
    for (int p: position) sums[p % 2]++;

    return Math.min(sums[0], sums[1]);
  }
}
