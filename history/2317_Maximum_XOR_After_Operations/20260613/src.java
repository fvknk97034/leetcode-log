class Solution {
  public int maximumXOR(int[] nums) {
    int result = 0;
    for (int n: nums)
      result |= n;

    return result;
  }
}
