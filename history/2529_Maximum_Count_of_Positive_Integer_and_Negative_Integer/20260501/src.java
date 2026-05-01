class Solution {
  public int maximumCount(int[] nums) {
    int positiveCount = 0;
    int negativeCount = 0;
    for (int n: nums) {
      if (n > 0) {
        positiveCount++;
        continue;
      }

      if (n < 0) {
        negativeCount++;
      }
    }

    return Math.max(positiveCount, negativeCount);
  }
}
