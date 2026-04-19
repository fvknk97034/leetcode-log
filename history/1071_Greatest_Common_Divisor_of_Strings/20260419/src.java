class Solution {
  public String gcdOfStrings(String str1, String str2) {
    if (str1.length() < str2.length()) {
      String tmp = str1;
      str1 = str2;
      str2 = tmp;
    }

    for (int n = str2.length(); n > 0; n--) {
      if (str1.length() % n != 0 || str2.length() % n != 0)
        continue;

      String divisor = str2.substring(0, n);
      if (isDivisor(divisor, str2) && isDivisor(divisor, str1))
        return divisor;
    }

    return "";
  }

  private boolean isDivisor(String divisor, String target) {
    int n = target.length() / divisor.length();
    return divisor.repeat(n).equals(target);
  }
}
