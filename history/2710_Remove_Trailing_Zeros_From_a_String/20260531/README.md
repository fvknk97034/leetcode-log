# 2710. Remove Trailing Zeros From a String

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
  public String removeTrailingZeros(String num) {
    for (int i = num.length() - 1; i >= 0; i--) {
      if (num.charAt(i) == '0')
        continue;

      num = num.substring(0, i + 1);
      break;
    }

    return num;
  }
}
```
