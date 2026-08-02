class Solution {
  public boolean isPerfectSquare(int num) {
    int high = num;
    int low = 1;
    while (low <= high) {
      int n = (high + low) / 2;
      long area = (long)n * n;
      if (area == num)
        return true;
      else if (area > num)
        high = n - 1;
      else
        low = n + 1;
    }

    return false;
  }
}
