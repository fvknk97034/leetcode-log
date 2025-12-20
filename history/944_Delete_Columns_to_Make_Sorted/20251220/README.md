# 944. Delete Columns to Make Sorted

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
  public int minDeletionSize(String[] strs) {
    int result = 0;

    for (int i = 0; i < strs[0].length(); i++) {
      for (int j = 1; j < strs.length; j++) {
        if(strs[j - 1].charAt(i) > strs[j].charAt(i)) {
          result++;
          break;
        }
      }
    }

    return result;
  }
}
```
