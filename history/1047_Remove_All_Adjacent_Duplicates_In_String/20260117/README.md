# 1047. Remove All Adjacent Duplicates In String

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
  public String removeDuplicates(String s) {
    StringBuilder sb = new StringBuilder();
    char lastChar = ' ';
    for (char c: s.toCharArray()) {
      if (sb.length() == 0) {
        sb.append(c);
        lastChar = c;
        continue;
      }

      if (c == lastChar) {
        sb.deleteCharAt(sb.length() - 1);
        lastChar = sb.length() == 0 ? ' ' : sb.charAt(sb.length() - 1);
        continue;
      }

      sb.append(c);
      lastChar = c;
    }

    return sb.toString();
  }
}
```
