# 2390. Removing Stars From a String

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
  public String removeStars(String s) {
    Deque<Character> chars = new ArrayDeque<>();
    for (char c: s.toCharArray()) {
      if (c == '*') {
        chars.pop();
        continue;
      }

      chars.push(c);
    }

    StringBuilder sb = new StringBuilder();
    while (!chars.isEmpty()) {
      sb.append(chars.pollLast());
    }

    return sb.toString();
  }
}
```
