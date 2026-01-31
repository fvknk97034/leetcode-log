# 744. Find Smallest Letter Greater Than Target

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
  public char nextGreatestLetter(char[] letters, char target) {
    if (letters[letters.length - 1] <= target) return letters[0];

    for (char c: letters) {
      if (c > target) return c;
    }

    return letters[0];
  }
}
```
