# 190. Reverse Bits

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
class Solution {
  public int reverseBits(int n) {
    String binary = Integer.toBinaryString(n);
    binary = "0".repeat(32 - binary.length()) + binary;

    String reverseBinary = new StringBuilder(binary).reverse().toString();

    return Integer.parseInt(reverseBinary, 2);
  }
}
```
