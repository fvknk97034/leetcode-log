class Solution {
  public int countDigits(int num) {
    int result = 0;
    int original = num;
    while (num != 0) {
      if (original % (num % 10) == 0)
        result++;

      num /= 10;
    }

    return result;
  }
}
