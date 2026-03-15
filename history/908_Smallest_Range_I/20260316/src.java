class Solution {
  public int smallestRangeI(int[] nums, int k) {
    if (nums.length < 2) return 0;

    int min = nums[0];
    int max = nums[0];
    for (int n: nums) {
      if (n < min) min = n;
      else if (n > max) max = n;
    }

    return max - min <= 2 * k ? 0 : max - min - 2 * k;
  }
}
