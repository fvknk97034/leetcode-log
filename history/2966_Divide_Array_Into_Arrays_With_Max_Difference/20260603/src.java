class Solution {
  public int[][] divideArray(int[] nums, int k) {
    Arrays.sort(nums);

    List<int[]> results = new ArrayList<>();
    for (int i = 0; i < nums.length / 3; i++) {
      if (nums[i * 3 + 2] - nums[i * 3] > k)
        return new int[0][];

      results.add(new int[]{ nums[i * 3], nums[i * 3 + 1], nums[i * 3 + 2] });
    }

    return results.toArray(new int[0][]);
  }
}
