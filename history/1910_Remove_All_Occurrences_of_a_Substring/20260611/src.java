class Solution {
  public String removeOccurrences(String s, String part) {
    StringBuilder sb = new StringBuilder(s);
    int len = part.length();
    int index = -1;
    while ((index = sb.indexOf(part)) != -1)
      sb.delete(index, index + len);

    return sb.toString();
  }
}
