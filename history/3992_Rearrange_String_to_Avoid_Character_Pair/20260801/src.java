class Solution {
  public String rearrangeString(String s, char x, char y) {
    char[] chars = s.toCharArray();
    for (int i = chars.length - 2; i>= 0; i--) {
      if (chars[i] == x)
        chars = moveLast(chars, i);
    }

    return new String(chars);
  }

  private char[] moveLast(char[] chars, int targetIndex) {
    for (int i = targetIndex + 1; i < chars.length; i++) {
      char tmp = chars[i - 1];
      chars[i - 1] = chars[i];
      chars[i] = tmp;
    }

    return chars;
  }
}
