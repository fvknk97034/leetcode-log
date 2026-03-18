# 2595. Number of Even and Odd Bits

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
  public int[] evenOddBit(int n) {
    String bits = Integer.toBinaryString(n);

    int[] results = new int[2];
    for (int i = 0; i < bits.length(); i++) {
      if (bits.charAt(i) == '1') results[(bits.length() - 1 - i) % 2]++;
    }

    return results;
  }
}
```
