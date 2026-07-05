class Solution {
  public int minSwaps(String s) {
    int result = 0;
    int balance = 0;
    for(char c: s.toCharArray()) {
      if (c == '[') {
        balance++;
        continue;
      }

      balance--;
      if (balance == -1) {
        result++;
        balance = 1;
      }
    }

    return result;
  }
}
