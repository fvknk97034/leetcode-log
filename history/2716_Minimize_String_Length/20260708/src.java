class Solution {
  public int minimizedStringLength(String s) {
    int result = 0;
    boolean[] isCounted = new boolean[26];
    for (char c: s.toCharArray()) {
      if (isCounted[c - 'a'])
        continue;

      result++;
      isCounted[c - 'a'] = true;
    }

    return result;
  }
}
