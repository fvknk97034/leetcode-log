# 1385. Find the Distance Value Between Two Arrays

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
  public int findTheDistanceValue(int[] arr1, int[] arr2, int d) {
    int result = 0;
    for(int a: arr1) {
      boolean isValid = true;
      for(int b: arr2){
        if(Math.abs(a - b) <= d) {
          isValid = false;
          break;
        }
      }

      if (isValid) {
        result++;
      }
    }

    return result;
  }
}
```
