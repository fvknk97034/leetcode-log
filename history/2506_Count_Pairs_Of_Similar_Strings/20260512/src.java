class Solution {
  public int similarPairs(String[] words) {
    int result = 0;
    boolean[][] existences = new boolean[words.length][];
    for (int i = 0; i < words.length; i++)
      existences[i] = charExistence(words[i]);

    for (int i = 0; i < words.length - 1; i++) {
      for (int j = i + 1; j < words.length; j++) {
        if (Arrays.equals(existences[i], existences[j]))
          result++;
      }
    }
    return result;
  }

  private boolean[] charExistence(String word) {
    boolean[] results = new boolean[26];
    for (int i = 0; i < word.length(); i++)
      results[word.charAt(i) - 'a'] = true;

    return results;
  }
}
