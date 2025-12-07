class Solution {
  public boolean hasTrailingZeros(int[] nums) {
    int lastZeroCount = 0;

    for (int num: nums) {
      if (num % 2 == 1)
        continue;

      lastZeroCount++;
      if (lastZeroCount == 2)
        return true;
    }

    return false;
  }
}
