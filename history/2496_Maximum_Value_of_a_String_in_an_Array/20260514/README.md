# 2496. Maximum Value of a String in an Array

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
  public int maximumValue(String[] strs) {
    int result = 0;

    for (String s: strs) {
      boolean isNumeric = true;
      for (char c: s.toCharArray()) {
        if (!Character.isDigit(c)) {
          isNumeric = false;
          break;
        }
      }

      result = Math.max(result, isNumeric ? Integer.parseInt(s) : s.length());
    }

    return result;
  }
}
```
