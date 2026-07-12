class Solution {
  public int duplicateNumbersXOR(int[] nums) {
    int result = 0;
    boolean[] foundNums = new boolean[51];
    for (int n: nums) {
      if (!foundNums[n]) {
        foundNums[n] = true;
        continue;
      }

      result ^= n;
    }

    return result;
  }
}
