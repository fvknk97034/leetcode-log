class Solution {
  public List<Integer> targetIndices(int[] nums, int target) {
    int lessCount = 0;
    int graterCount = 0;
    for (int n: nums) {
      if (n == target)
        continue;

      if (n > target) {
        graterCount++;
        continue;
      }

      lessCount++;
    }

    List<Integer> results = new ArrayList<Integer>();
    for (int i = lessCount; i < nums.length - graterCount; i++)
      results.add(i);

    return results;
  }
}
