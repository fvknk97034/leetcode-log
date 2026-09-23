class Solution {
  public int[] separateDigits(int[] nums) {
    int len = 0;
    for (int num: nums) {
      while (num != 0) {
        len++;
        num /= 10;
      }
    }

    int[] results = new int[len];
    int i = len - 1;
    for (int j = nums.length - 1; j >= 0; j--) {
      while (nums[j] != 0) {
        results[i] = nums[j] % 10;
        nums[j] /= 10;
        i--;
      }
    }

    return results;
  }
}
