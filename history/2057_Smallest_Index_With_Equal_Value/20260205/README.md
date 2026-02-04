# 2057. Smallest Index With Equal Value

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
  public int smallestEqual(int[] nums) {
    for (int i = 0; i < nums.length; i++) {
      if (i % 10 == nums[i]) return i; 
    }

    return -1;
  }
}
```
