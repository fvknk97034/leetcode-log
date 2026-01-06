# 3794. Reverse String Prefix

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
  public String reversePrefix(String s, int k) {
    StringBuilder sb = new StringBuilder();
    sb.append(s.substring(0, k));
    sb.reverse();

    if (k == s.length()) return sb.toString();

    return sb.toString() + s.substring(k, s.length());
  }
}
```
