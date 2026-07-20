class Solution {
  public int minTimeToType(String word) {
    int result = 0;
    char preWordChar = 'a';
    for (char c: word.toCharArray()) {
      char preChar = preWordChar;
      char postChar = c;
      if (preChar > postChar) {
        char tmp = preChar;
        preChar = postChar;
        postChar = tmp;
      }

      result += Math.min(postChar - preChar, preChar + 26 - postChar) + 1;
      preWordChar = c;
    }

    return result;
  }
}
