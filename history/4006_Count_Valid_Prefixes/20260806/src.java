class Solution {
  public int countValidPrefixes(String s) {
    int result = 0;
    int[] count = new int[2];
    for (int i = 0; i < s.length(); i++) {
      count[s.charAt(i) - '0']++;

      if (Math.abs(count[0] - count[1]) <= 1)
        result++;
    }

    return result;
  }
}
