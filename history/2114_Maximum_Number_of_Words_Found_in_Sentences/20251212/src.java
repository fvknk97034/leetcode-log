class Solution {
  public int mostWordsFound(String[] sentences) {
    int result = 0;
    for (String s: sentences) {
      result = Math.max(result, s.split(" ").length);
    }

    return result;
  }
}
