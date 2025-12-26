class Solution {
  public int minOperations(int[] nums) {
    int firstNum = nums[0];
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != firstNum) return 1;
    }

    return 0;
  }
}
