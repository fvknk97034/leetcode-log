# 3285. Find Indices of Stable Mountains

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
  public List<Integer> stableMountains(int[] height, int threshold) {
    List<Integer> results = new ArrayList<>();
    for (int i = 1; i < height.length; i++) {
      if (height[i - 1] > threshold) results.add(i);
    }

    return results;
  }
}
```
