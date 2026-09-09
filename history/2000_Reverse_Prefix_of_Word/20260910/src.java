class Solution {
  public String reversePrefix(String word, char ch) {
    int index = word.indexOf(ch);
    if (index == -1)
      return word;

    char[] chars = word.toCharArray();
    for (int i = 0; i <= index / 2; i++) {
      char tmp = chars[i];
      chars[i] = chars[index - i];
      chars[index - i] = tmp;
    }

    return new String(chars);
  }
}
