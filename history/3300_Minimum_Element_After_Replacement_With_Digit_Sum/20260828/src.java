class Solution {
  public int minElement(int[] nums) {
    int result = Integer.MAX_VALUE;
    for (int n: nums)
      result = Math.min(result, digitSum(n));

    return result;
  }

  private int digitSum(int n) {
    int result = 0;
    while (n != 0) {
      result += n % 10;
      n /= 10;
    }

    return result;
  }
}
