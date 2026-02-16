class Solution {
  public int reverseBits(int n) {
    String binary = Integer.toBinaryString(n);
    binary = "0".repeat(32 - binary.length()) + binary;

    String reverseBinary = new StringBuilder(binary).reverse().toString();

    return Integer.parseInt(reverseBinary, 2);
  }
}
