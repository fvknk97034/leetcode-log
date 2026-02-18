# 693. Binary Number with Alternating Bits

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
  public boolean hasAlternatingBits(int n) {
    char[] bits = Integer.toBinaryString(n).toCharArray();
    for (int i = 1; i < bits.length; i++) {
      if (bits[i - 1] == bits[i]) return false;
    }

    return true;
  }
}
```
