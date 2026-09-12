class Solution {
  public int totalWaviness(int num1, int num2) {
    if (num2 < 101)
      return 0;

    if (num1 < 101)
      num1 = 101;

    int result = 0;
    for (int num = num1; num <= num2; num++) {
      String numString = String.valueOf(num);
      int len = numString.length();

      int prev = numString.charAt(0);
      int curr = numString.charAt(1);
      int next = numString.charAt(2);
      for (int i = 1; i < len - 1; i++) {
        if (curr < Math.min(prev, next) || curr > Math.max(prev, next))
          result++;

        if (i + 2 == len)
          continue;

        prev = curr;
        curr = next;
        next = numString.charAt(i + 2);
      }
    }

    return result;
  }
}
