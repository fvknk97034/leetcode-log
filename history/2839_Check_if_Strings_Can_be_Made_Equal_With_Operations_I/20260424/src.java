class Solution {
  public boolean canBeEqual(String s1, String s2) {
    if (s1.equals(s2))
      return true;

    for (int i = 2; i < 4; i++) {
      if (s1.charAt(i - 2) == s2.charAt(i - 2) && s1.charAt(i) == s2.charAt(i))
        continue;

      if (s1.charAt(i - 2) != s2.charAt(i))
        return false;

      if (s1.charAt(i) != s2.charAt(i - 2))
        return false;
    }

    return true;
  }
}
