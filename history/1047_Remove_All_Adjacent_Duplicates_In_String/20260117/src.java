class Solution {
  public String removeDuplicates(String s) {
    StringBuilder sb = new StringBuilder();
    char lastChar = ' ';
    for (char c: s.toCharArray()) {
      if (sb.length() == 0) {
        sb.append(c);
        lastChar = c;
        continue;
      }

      if (c == lastChar) {
        sb.deleteCharAt(sb.length() - 1);
        lastChar = sb.length() == 0 ? ' ' : sb.charAt(sb.length() - 1);
        continue;
      }

      sb.append(c);
      lastChar = c;
    }

    return sb.toString();
  }
}
