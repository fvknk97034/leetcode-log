class Solution {
  public int minimumPushes(String word) {
    int[] charCounts = new int[26];
    for (char c: word.toCharArray())
      charCounts[c - 'a']++;

    Arrays.sort(charCounts);

    int result = 0;
    for (int i = charCounts.length - 1; i >= 0 && charCounts[i] != 0; i--)
      result += charCounts[i] * ((charCounts.length - i - 1) / 8 + 1);

    return result;
  }
}
