# 2839. Check if Strings Can be Made Equal With Operations I

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
  public boolean canBeEqual(String s1, String s2) {
    if (s1.equals(s2))
      return true;

    for (int i = 2; i < 4; i++) {
      if (s1.charAt(i - 2) == s2.charAt(i - 2) && s1.charAt(i) == s2.charAt(i))
        continue;

      if (s1.charAt(i - 2) != s2.charAt(i))
        return false;

      if (s1.charAt(i) != s2.charAt(i - 2))
        return false;
    }

    return true;
  }
}
```
