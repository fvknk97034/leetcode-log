# 2917. Find the K-or of an Array

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
```
