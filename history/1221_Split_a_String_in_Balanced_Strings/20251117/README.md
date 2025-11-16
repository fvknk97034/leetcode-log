# 1221. Split a String in Balanced Strings

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```java
class Solution {
  public int balancedStringSplit(String s) {
    int result = 0;

    int sum = 0;
    for (char c : s.toCharArray()) {
      sum += c == 'R' ? 1 : -1;
      if (sum == 0)
        result++;
    }

    return result;
  }
}
```
