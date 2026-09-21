class Solution {
  public String decodeMessage(String key, String message) {
    char[] map = new char[26];
    int i = 0;
    for (char c: key.toCharArray()) {
      if (c == ' ')
        continue;
      if (map[c - 'a'] != '\0')
        continue;

      map[c - 'a'] = (char)('a' + i);
      i++;
    }

    StringBuilder sb = new StringBuilder(message.length());
    for (char c: message.toCharArray()) {
      if (c == ' ') {
        sb.append(' ');
        continue;
      }

      sb.append(map[c - 'a']);
    }

    return sb.toString();
  }
}
