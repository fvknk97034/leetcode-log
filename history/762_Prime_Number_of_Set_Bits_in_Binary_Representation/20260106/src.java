class Solution {
  public int countPrimeSetBits(int left, int right) {
    int result = 0;

    for (int n = left; n <= right; n++) {
      int count = Integer.bitCount(n);
      if (isPrime(count)) result++;
    }

    return result;
  }

  private boolean isPrime(int n) {
    if (n <= 1) return false;

    for (int d = 2; d <= Math.sqrt(n); d++) {
      if (n % d == 0) return false;
    }

    return true;
  }
}
