class Solution {
  public int[] createTargetArray(int[] nums, int[] index) {
    int[] results = new int[nums.length];
    for (int i = 0; i < nums.length; i++) {
      if (i == index[i]) {
        results[i] = nums[i];
        continue;
      }

      results = insert(results, nums[i], index[i]);
    }

    return results;
  }

  private int[] insert(int[] nums, int num, int targetIndex) {
    for (int i = nums.length - 1; i > targetIndex; i--)
      nums[i] = nums[i - 1];

    nums[targetIndex] = num;

    return nums;
  }
}
