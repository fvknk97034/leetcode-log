class Solution {
  public String greatestLetter(String s) {
    String result = "";

    while (s != "") {
      String c = String.valueOf(s.charAt(0));
      String lower = c.toLowerCase();
      String upper = c.toUpperCase();

      Boolean hasBothCase = s.contains(lower) && s.contains(upper);

      if (!hasBothCase) {
        s = s.replace(lower, "").replace(upper, "");
        continue;
      }

      if (result == "" || result.charAt(0) < upper.charAt(0)) {
        result = upper;
      }
      s = s.replace(lower, "").replace(upper, "");
    }

    return result;
  }
}
