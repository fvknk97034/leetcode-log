class Solution {
  public boolean checkString(String s) {
    boolean bFound = false;
    for (char c: s.toCharArray()) {
      if (bFound && c == 'a') return false;

      if (c == 'b') bFound = true;
    }
    return true;
  }
}
