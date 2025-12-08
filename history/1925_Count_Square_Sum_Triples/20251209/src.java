class Solution {
  public int countTriples(int n) {
    int result = 0;
    for (int i = 1; i < n; i++) {
      int a = i * i;

      for (int j = 1; a + j * j <= n * n; j++) {
        int b = j * j;
        double c = Math.sqrt(a + b);

        if (c == Math.floor(c))
          result++;
      }
    }

    return result;
  }
}
