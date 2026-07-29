class Solution {
  public List<Integer> twoOutOfThree(int[] nums1, int[] nums2, int[] nums3) {
    int[] nums = new int[101];
    boolean[] counted = new boolean[101];
    for (int n: nums1) {
      if (counted[n])
        continue;

      nums[n]++;
      counted[n] = true;
    }

    counted = new boolean[101];
    for (int n: nums2) {
      if (counted[n])
        continue;

      nums[n]++;
      counted[n] = true;
    }

    counted = new boolean[101];
    for (int n: nums3) {
      if (counted[n])
        continue;

      nums[n]++;
      counted[n] = true;
    }

    List<Integer> results = new ArrayList<>();
    for (int n = 1; n < nums.length; n++)
      if (nums[n] >= 2)
        results.add(n);

    return results;
  }
}
