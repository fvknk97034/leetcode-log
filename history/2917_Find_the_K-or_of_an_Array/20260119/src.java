class Solution {
  public int findKOr(int[] nums, int k) {
    int max = 0;
    for (int n: nums) {
      if (n > max) max = n;
    }
    int maxLen = Integer.toBinaryString(max).length();

    int[] counts = new int[maxLen];
    for (int n: nums) {
      String binary = padZero(Integer.toBinaryString(n), maxLen);
      for (int i = 0; i < maxLen; i++) {
        if (binary.charAt(i) == '1') counts[i]++;
      }
    }
    StringBuilder sb = new StringBuilder();
    for (int c: counts) {
      if (c >= k) sb.append("1");
      else sb.append("0");
    }

    return Integer.parseInt(sb.toString(), 2);
  }

  private String padZero(String s, int length) {
    if (s.length() >= length) return s;

    StringBuilder sb = new StringBuilder();
    sb.append("0".repeat(length - s.length()));
    sb.append(s);

    return sb.toString();
  }
}
