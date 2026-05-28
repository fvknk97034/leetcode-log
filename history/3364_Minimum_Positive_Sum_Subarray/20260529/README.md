# 3364. Minimum Positive Sum Subarray 

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
  public int minimumSumSubarray(List<Integer> nums, int l, int r) {
    int result = 1000 * r + 1;
    int size = nums.size();

    int[] preSums = new int[size + 1];
    preSums[1] = nums.get(0);
    for (int i = 2; i <= size; i++)
      preSums[i] = preSums[i - 1] + nums.get(i - 1);

    for (int i = 0; i < size; i++) {
      for (int count = l; count <= r; count++) {
        if (i + count > size)
          break;

        int sum = preSums[i + count] - preSums[i];
        if (sum > 0 && sum < result)
          result = sum;
      }
    }

    return result == 1000 * r + 1 ? -1 : result;
  }
}
```
