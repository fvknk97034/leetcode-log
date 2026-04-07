# 1961. Check If String Is a Prefix of Array

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
  public boolean isPrefixString(String s, String[] words) {
    for (String word: words) {
      if (!s.startsWith(word)) break;

      s = s.substring(word.length(), s.length());
    }

    return s.length() == 0;
  }
}
```
