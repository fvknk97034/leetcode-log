class Solution {
  public int climbStairs(int n) {
    if (n <= 2)
      return n;

    int[] waysToReachStep = new int[n + 1];
    waysToReachStep[1] = 1;
    waysToReachStep[2] = 2;

    for (int step = 3; step <= n; step++) {
      waysToReachStep[step] = waysToReachStep[step - 1] + waysToReachStep[step - 2];
    }

    return waysToReachStep[n];
  }
}
