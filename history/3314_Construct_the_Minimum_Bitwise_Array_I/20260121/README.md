# 3314. Construct the Minimum Bitwise Array I

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
  public int[] minBitwiseArray(List<Integer> nums) {
    int[] results = new int[nums.size()];

    for (int i = 0; i < nums.size(); i++) {
      results[i] = -1;
      int n = nums.get(i);
      for (int ans = 0; ans <= n; ans++) {
        if ((ans | (ans + 1)) != n) continue;
        
        results[i] = ans;
        break;
      }
    }

    return results;
  }
}
```
