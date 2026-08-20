class Solution {
  public boolean checkOnesSegment(String s) {
    boolean shownOne = false;
    for (int i = s.length() - 1; i >= 0; i--) {
      char c = s.charAt(i);
      if (shownOne && c == '0')
        return false;

      if (!shownOne && c == '1')
        shownOne = true;
    }
    return true;
  }
}
