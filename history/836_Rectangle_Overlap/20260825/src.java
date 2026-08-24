class Solution {
  public boolean isRectangleOverlap(int[] rec1, int[] rec2) {
    return Math.max(rec1[0], rec1[2]) > Math.min(rec2[0], rec2[2]) &&
      Math.min(rec1[0], rec1[2]) < Math.max(rec2[0], rec2[2]) &&
      Math.max(rec1[1], rec1[3]) > Math.min(rec2[1], rec2[3]) &&
      Math.min(rec1[1], rec1[3]) < Math.max(rec2[1], rec2[3]);
  }
}
