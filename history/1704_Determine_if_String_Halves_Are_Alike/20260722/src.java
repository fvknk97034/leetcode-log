class Solution {
  char[] vowels = { 'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u' };

  public boolean halvesAreAlike(String s) {
    int len = s.length();

    int preCount = 0;
    for (int i = 0; i < len / 2; i++) {
      if (!isVowel(s.charAt(i)))
        continue;

      preCount++;
    }

    int postCount = 0;
    for (int i = len / 2; i < len; i++) {
      if (!isVowel(s.charAt(i)))
        continue;

      postCount++;
    }

    return preCount == postCount;
  }

  private boolean isVowel(char c) {
    for (char v: vowels) {
      if (c == v)
        return true;
    }

    return false;
  }
}
