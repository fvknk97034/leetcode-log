# 1619. Mean of Array After Removing Some Elements

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
  public double trimMean(int[] arr) {
    int trimLen = (int)(arr.length * 0.05);

    Arrays.sort(arr);

    double result = 0;
    double len = (double)arr.length - trimLen * 2;
    for (int i = trimLen; i < arr.length - trimLen; i++) {
        result += arr[i] / len;
    }

    return result;
  }
}
```
