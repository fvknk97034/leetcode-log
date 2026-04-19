# 1556. Thousand Separator

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
  public String thousandSeparator(int n) {
    StringBuilder sb = new StringBuilder(String.valueOf(n));
    for (int i = sb.length() - 3; i > 0; i -= 3) {
      sb = sb.insert(i, ".");
    }
    return sb.toString();
  }
}
```
