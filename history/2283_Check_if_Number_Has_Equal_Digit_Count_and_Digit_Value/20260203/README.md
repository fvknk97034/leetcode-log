# 2283. Check if Number Has Equal Digit Count and Digit Value

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
  public boolean digitCount(String num) {
    int[] counts = new int[10];
    for (char c: num.toCharArray())
      counts[c - '0']++;

    for (int i = 0; i < num.length(); i++) {
      if (counts[i] != (num.charAt(i) - '0'))
        return false;
    }

    return true;
  }
}
```
