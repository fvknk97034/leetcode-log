class Solution {
  public int findMaxK(int[] nums) {
    int result = -1;
    for (int n: nums) {
      if (n > result && containNum(nums, -n)) result = n;
    }

    return result;
  }

  private boolean containNum(int[] nums, int num) {
    for (int n: nums) {
      if (num == n) return true;
    }

    return false;
  }
}
