class Solution {
  public int hardestWorker(int n, int[][] logs) {
    int result = logs[0][0];
    int max = logs[0][1];
    for (int i = 1; i < logs.length; i++) {
      int leaveTime = logs[i][1] - logs[i - 1][1];
      if (leaveTime < max) continue;

      int worker = logs[i][0];
      if (leaveTime == max && worker > result) continue;

      result = worker;
      max = leaveTime;
    }

    return result;
  }
}
