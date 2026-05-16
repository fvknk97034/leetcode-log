# 2357. Make Array Zero by Subtracting Equal Amounts

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
  public int minimumOperations(int[] nums) {
    Set<Integer> set = new HashSet<>();
    for (int n: nums) {
      if (n != 0) set.add(n);
    }
    
    return set.size();
  }
}
```
