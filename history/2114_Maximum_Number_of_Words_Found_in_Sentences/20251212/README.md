# 2114. Maximum Number of Words Found in Sentences

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
  public int mostWordsFound(String[] sentences) {
    int result = 0;
    for (String s: sentences) {
      result = Math.max(result, s.split(" ").length);
    }

    return result;
  }
}
```
