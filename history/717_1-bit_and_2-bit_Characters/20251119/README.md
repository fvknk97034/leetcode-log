# 717. 1-bit and 2-bit Characters

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
  public boolean isOneBitCharacter(int[] bits) {
    int i = 0;
    while (i < bits.length - 1) {
      if (bits[i] == 0) {
        i++;
        continue;
      }

      i += 2;
    }

    return i == bits.length - 1;
  }
}
```
