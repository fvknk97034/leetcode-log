class Solution {
  public int findMinimumOperations(String s1, String s2, String s3) {
    int[] lens = {s1.length(), s2.length(), s3.length()};
    int commonLength = lens[0];
    for (int i = 1; i < lens.length; i++) {
      if (lens[i] < commonLength)
        commonLength = lens[i];
    }

    for (int i = 0; i < commonLength; i++) {
      char c1 = s1.charAt(i);
      char c2 = s2.charAt(i);
      char c3 = s3.charAt(i);
      if (c1 == c2 && c2 == c3)
        continue;

      commonLength = Math.min(commonLength, i);
      break;
    }
    if (commonLength == 0)
      return -1;

    int result = 0;
    for (int l: lens)
      result += l - commonLength;

    return result;
  }
}
