class Solution {
  public boolean kLengthApart(int[] nums, int k) {
    int diff = k;
    for (int n : nums) {
      if (n == 0) {
        diff++;
        continue;
      }
      if (diff < k)
        return false;

      diff = 0;
    }
    return true;
  }
}
