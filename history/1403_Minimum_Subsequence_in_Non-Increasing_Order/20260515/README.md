# 1403. Minimum Subsequence in Non-Increasing Order

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
  public List<Integer> minSubsequence(int[] nums) {
    Arrays.sort(nums);

    int rightSum = 0;
    int sum = 0;
    for (int n: nums)
      sum += n;

    List<Integer> results = new ArrayList<>();
    for (int right = nums.length - 1; right >= 0; right--) {
      rightSum += nums[right];
      results.add(nums[right]);

      if (sum - rightSum < rightSum)
        break;
    }

    return results;
  }
}
```
