class Solution {
  public long maxPairStrength(int[] nums) {
    Arrays.sort(nums);
    long result = 0;

    for (int i = nums.length - 1; i > 0 && (long)nums[i] * nums[i] > result; i--) {
      for (int j = i - 1; j >= 0; j--) {
        int gcd = gcd(nums[i], nums[j]);
        result = Math.max((long)nums[i] * nums[j] / gcd / gcd, result);
      }
    }

    return result;
  }

  private int gcd(int a, int b) {
    while (b != 0) {
      int tmp = a;
      a = b;
      b = tmp % b;
    }

    return a;
  }
}
