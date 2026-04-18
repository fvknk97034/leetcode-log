# 541. Reverse String II

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
  public String reverseStr(String s, int k) {
    char[] chars = s.toCharArray();
    for (int i = 0; i < chars.length; i += 2 * k) {
      chars = reverseSubArray(chars, i, k);
    }

    return new String(chars);
  }

  private char[] reverseSubArray(char[] chars, int start, int num) {
    num = Math.min(num, chars.length - start);
    for (int offset = 0; offset < num / 2; offset++) {
      char tmp = chars[start + offset];
      chars[start + offset] = chars[start + num - offset - 1];
      chars[start + num - offset - 1] = tmp;
    }

    return chars;
  }
}
```
