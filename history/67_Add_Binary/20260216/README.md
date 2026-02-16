# 67. Add Binary

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
import java.math.BigInteger;

class Solution {
  public String addBinary(String a, String b) {
    return (new BigInteger(a, 2).add(new BigInteger(b, 2))).toString(2);
  }
}
```
