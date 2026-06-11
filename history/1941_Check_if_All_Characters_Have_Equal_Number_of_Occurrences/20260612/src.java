class Solution {
  public boolean areOccurrencesEqual(String s) {
    int[] charCount = new int[26];

    for (char c: s.toCharArray())
      charCount[c - 'a']++;

    int count = 0;
    boolean result = true;
    for (int c: charCount) {
      if (c == 0)
        continue;

      if (count == 0) {
        count = c;
        continue;
      }

      if (count != c)
        return false;
    }
    return result;
  }
}
