# 2124. Check if All A's Appears Before All B's

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
  public boolean checkString(String s) {
    boolean bFound = false;
    for (char c: s.toCharArray()) {
      if (bFound && c == 'a') return false;

      if (c == 'b') bFound = true;
    }
    return true;
  }
}
```
