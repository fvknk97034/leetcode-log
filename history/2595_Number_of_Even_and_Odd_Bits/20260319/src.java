class Solution {
  public int[] evenOddBit(int n) {
    String bits = Integer.toBinaryString(n);

    int[] results = new int[2];
    for (int i = 0; i < bits.length(); i++) {
      if (bits.charAt(i) == '1') results[(bits.length() - 1 - i) % 2]++;
    }

    return results;
  }
}
