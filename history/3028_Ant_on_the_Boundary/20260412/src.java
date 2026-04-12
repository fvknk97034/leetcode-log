class Solution {
  public int returnToBoundaryCount(int[] nums) {
    int position = 0;
    int result = 0;
    for (int n : nums) {
      position += n;

      if (position == 0)
        result++;
    }

    return result;
  }
}
