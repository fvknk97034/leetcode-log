class Solution {
  public int minOperations(int[] nums, int k) {
    int result = 0;
    for (int num: nums) {
      if (num < k)
        result++;
    }

    return result;
  }
}
