class Solution {
  public int countBinarySubstrings(String s) {
    int result = 0;

    char[] chars = s.toCharArray();

    int prevCount = 1;
    for (int i = 1; i < chars.length; i++) {
      if(chars[i - 1] != chars[i]) break;

      prevCount++;
    }
    if (prevCount == chars.length) return 0;

    int subCount = 1;
    for (int i = prevCount + 1; i < chars.length; i++) {
      if (chars[i - 1] != chars[i]) {
        result += Math.min(prevCount, subCount);
        prevCount = subCount;
        subCount = 1;
        continue;
      }

      subCount++;
    }

    return result + Math.min(prevCount, subCount);
  }
}
