class Solution {
  public boolean hasIncreasingSubarrays(List<Integer> nums, int k) {
    if (k == 1)
      return true;

    int len = nums.size();
    boolean[] isEndIndexes = new boolean[len];
    int increasedCount = 1;
    for (int i = 1; i < len; i++) {
      if (nums.get(i) <= nums.get(i - 1)) {
        increasedCount = 1;
        continue;
      }
      increasedCount++;

      if (increasedCount < k)
        continue;

      if (i - k > 0 && isEndIndexes[i - k])
        return true;

      isEndIndexes[i] = true;
    }

    return false;
  }
}
