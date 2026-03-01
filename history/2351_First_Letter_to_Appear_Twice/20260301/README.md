# 2351. First Letter to Appear Twice

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
  public char repeatedCharacter(String s) {
    Set<Character> charSet = new HashSet<>();
    for (char c: s.toCharArray()) {
      if (!charSet.add(c)) return c;
    }

    throw new RuntimeException("invalid result");
  }
}
```
