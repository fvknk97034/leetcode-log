class Solution {
  public String modifyString(String s) {
    StringBuilder sb = new StringBuilder(s);
    int len = s.length();
    for (int i = 0; i < len; i++) {
      if (sb.charAt(i) != '?')
        continue;

      char preChar = (i == 0 ? 'a' - 1 : sb.charAt(i - 1));
      char postChar = (i == len - 1 ? 'a' - 1 : sb.charAt(i + 1));
      for (char c = 'a'; c <= 'c'; c++){
        if (c != preChar && c != postChar) {
          sb.setCharAt(i, c);
          break;
        }
      }
    }

    return sb.toString();
  }
}
