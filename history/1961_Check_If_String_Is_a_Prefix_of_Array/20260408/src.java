class Solution {
  public boolean isPrefixString(String s, String[] words) {
    for (String word: words) {
      if (!s.startsWith(word)) break;

      s = s.substring(word.length(), s.length());
    }

    return s.length() == 0;
  }
}
