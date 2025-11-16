class Solution {
  public int balancedStringSplit(String s) {
    int result = 0;

    int sum = 0;
    for (char c : s.toCharArray()) {
      sum += c == 'R' ? 1 : -1;
      if (sum == 0)
        result++;
    }

    return result;
  }
}
