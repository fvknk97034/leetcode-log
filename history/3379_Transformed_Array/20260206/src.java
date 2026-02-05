class Solution {
  public int[] constructTransformedArray(int[] nums) {
    int[] results = new int[nums.length];
    for (int i = 0; i < nums.length; i++) {
      int resultIndex = i + nums[i];
      if (resultIndex >= 0) {
        results[i] = nums[resultIndex % nums.length];
        continue;
      }

      resultIndex = resultIndex % nums.length == 0 ? 0 : resultIndex % nums.length + nums.length;
      results[i] = nums[resultIndex];
    }

    return results;
  }
}
