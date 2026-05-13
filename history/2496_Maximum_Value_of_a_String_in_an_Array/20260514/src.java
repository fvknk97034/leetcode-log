class Solution {
  public int maximumValue(String[] strs) {
    int result = 0;

    for (String s: strs) {
      boolean isNumeric = true;
      for (char c: s.toCharArray()) {
        if (!Character.isDigit(c)) {
          isNumeric = false;
          break;
        }
      }

      result = Math.max(result, isNumeric ? Integer.parseInt(s) : s.length());
    }

    return result;
  }
}
