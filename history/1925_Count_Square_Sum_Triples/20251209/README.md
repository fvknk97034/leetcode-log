# 1925. Count Square Sum Triples

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
  public int countTriples(int n) {
    int result = 0;
    for (int i = 1; i < n; i++) {
      int a = i * i;

      for (int j = 1; a + j * j <= n * n; j++) {
        int b = j * j;
        double c = Math.sqrt(a + b);

        if (c == Math.floor(c))
          result++;
      }
    }

    return result;
  }
}
```
