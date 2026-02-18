class Solution {
  public boolean hasAlternatingBits(int n) {
    char[] bits = Integer.toBinaryString(n).toCharArray();
    for (int i = 1; i < bits.length; i++) {
      if (bits[i - 1] == bits[i]) return false;
    }

    return true;
  }
}
