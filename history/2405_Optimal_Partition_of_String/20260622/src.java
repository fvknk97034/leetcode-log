class Solution {
  public int partitionString(String s) {
    int result = 1;

    boolean[] hasChar = new boolean[26];
    for (char c: s.toCharArray()) {
      if (!hasChar[c - 'a']) {
        hasChar[c - 'a'] = true;
        continue;
      }

      result++;
      hasChar = new boolean[26];
      hasChar[c - 'a'] = true;
    }

    return result;
  }
}
