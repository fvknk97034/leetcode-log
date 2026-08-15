class Solution {
  public int fib(int n) {
    int n1 = 1;
    int n2 = 0;
    for (int i = 2; i < n; i++) {
      int result = n1 + n2;
      n2 = n1;
      n1 = result;
    }

    return n == 0 ? 0 : n1 + n2;
  }
}
