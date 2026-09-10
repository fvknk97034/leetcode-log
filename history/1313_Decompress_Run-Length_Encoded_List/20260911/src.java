class Solution {
  public int[] decompressRLElist(int[] nums) {
    int len = 0;
    for (int i = 0; i < nums.length; i += 2)
      len += nums[i];

    int[] results = new int[len];
    int index = 0;
    for (int i = 0; i < nums.length; i += 2) {
      Arrays.fill(results, index, index + nums[i], nums[i + 1]);
      index += nums[i];
    }

    return results;
  }
}
