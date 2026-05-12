class Solution {
  public int[] sortedSquares(int[] nums) {
    int[] results = new int[nums.length];

    int i = nums.length - 1;
    int left = 0;
    int right = nums.length - 1;
    while (left <= right) {
      int n_left = nums[left] * nums[left];
      int n_right = nums[right] * nums[right];
      if (n_left > n_right) {
        results[i--] = n_left;
        left++;
        continue;
      }

      results[i--] = n_right;
      right--;
    }

    return results;
  }
}
