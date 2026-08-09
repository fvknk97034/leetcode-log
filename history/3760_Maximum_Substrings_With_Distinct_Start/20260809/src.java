class Solution {
  public int maxDistinct(String s) {
    boolean[] isViewed = new boolean[26];
    int result = 0;
    for (int i = 0; i < s.length() && result != 26; i++) {
      int index = s.charAt(i) - 'a';
      if (isViewed[index])
        continue;

      isViewed[index] = true;
      result++;
    }

    return result;
  }
}
