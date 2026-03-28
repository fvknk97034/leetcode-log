class Solution {
  public int getMaximumGenerated(int n) {
    if (n < 2) return n;

    int[] nums = new int[n + 1];
    nums[1] = 1;
    int result = 1;
    for (int i = 1; 2 * i + 1 <= n; i++) {
      nums[2 * i] = nums[i];
      nums[2 * i + 1] = nums[i] + nums[i + 1];
      if (nums[2 * i + 1] > result) result = nums[2 * i + 1];
    }

    return result;
  }
}
