class Solution {
  public boolean isFascinating(int n) {
    if (n % 10 == 0) return false;

    int[] counts = new int[10];
    if (hasDuplicatedDigits(counts, n)) return false;
    if (hasDuplicatedDigits(counts, n * 2)) return false;
    if (hasDuplicatedDigits(counts, n * 3)) return false;

    return true;
  }

  private boolean hasDuplicatedDigits(int[] counts, int n) {
    while (n > 0) {
      int d = n % 10;
      if (d == 0 || counts[d] == 1) return true;

      counts[d] = 1;
      n /= 10;
    }

    return false;
  }
}
