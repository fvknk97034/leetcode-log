class Solution {
  public int findTheLongestBalancedSubstring(String s) {
    int zeroStartIndex = indexOf(s, '0', 0);
    int result = 0;
    while (zeroStartIndex != -1) {
      int oneStartIndex = indexOf(s, '1', zeroStartIndex + 1);
      if (oneStartIndex == -1) break;

      int nextZeroStartIndex = indexOf(s, '0', oneStartIndex + 1);

      int zeroCount = oneStartIndex - zeroStartIndex;
      int oneCount = nextZeroStartIndex != -1 ? nextZeroStartIndex - oneStartIndex : s.length() - oneStartIndex;

      result = Math.max(Math.min(zeroCount, oneCount) * 2, result);
      zeroStartIndex = nextZeroStartIndex;
    }

    return result;
  }

  private int indexOf(String s, char c, int start) {
    for (int i = start; i < s.length(); i++) {
      if (s.charAt(i) == c)
        return i;
    }

    return -1;
  }
}
