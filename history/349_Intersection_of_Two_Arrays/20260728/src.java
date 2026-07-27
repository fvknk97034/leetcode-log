class Solution {
  public int[] intersection(int[] nums1, int[] nums2) {
    Set<Integer> intersectionNums = new HashSet<>();
    boolean[] hasNums2 = new boolean[1001];
    for (int n: nums2)
      hasNums2[n] = true;

    for (int n: nums1) {
      if (hasNums2[n])
        intersectionNums.add(n);
    }

    int[] results = new int[intersectionNums.size()];
    int i = 0;
    for (int n: intersectionNums)
      results[i++] = n;

    return results;
  }
}
