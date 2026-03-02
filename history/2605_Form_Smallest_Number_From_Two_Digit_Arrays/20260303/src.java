class Solution {
  public int minNumber(int[] nums1, int[] nums2) {
    int min1 = nums1[0];
    int min2 = nums2[0];
    int sharedMin = 10;
    for (int n1: nums1) {
      min1 = Math.min(min1, n1);

      for (int n2: nums2) {
        if (n1 == n2 && n1 < sharedMin) {
          sharedMin = n1;
          if (sharedMin == 1) break;
        }

        min2 = Math.min(min2, n2);
      }
    }

    if (sharedMin < 10) return sharedMin;

    return min1 < min2 ? min1 * 10 + min2 : min2 * 10 + min1;
  }
}
