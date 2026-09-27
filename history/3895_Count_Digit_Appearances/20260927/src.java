class Solution {
  public int countDigitOccurrences(int[] nums, int digit) {
    int[] digitCounts = new int[10];
    for (int num: nums) {
      while (num != 0) {
        digitCounts[num % 10]++;
        num /= 10;
      }
    }

    return digitCounts[digit];
  }
}
