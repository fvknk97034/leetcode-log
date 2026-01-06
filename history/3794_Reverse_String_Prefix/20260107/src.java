class Solution {
  public String reversePrefix(String s, int k) {
    StringBuilder sb = new StringBuilder();
    sb.append(s.substring(0, k));
    sb.reverse();

    if (k == s.length()) return sb.toString();

    return sb.toString() + s.substring(k, s.length());
  }
}
