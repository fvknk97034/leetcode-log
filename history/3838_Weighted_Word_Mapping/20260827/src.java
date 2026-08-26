class Solution {
  public String mapWordWeights(String[] words, int[] weights) {
    StringBuilder sb = new StringBuilder(words.length);
    for (String word: words) {
      int weightSum = 0;
      for (char c: word.toCharArray())
        weightSum += weights[c - 'a'];

      sb.append((char)('z' - weightSum % 26));
    }

    return sb.toString();
  }
}
