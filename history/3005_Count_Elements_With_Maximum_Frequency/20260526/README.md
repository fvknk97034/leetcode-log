# 3005. Count Elements With Maximum Frequency

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
  public int maxFrequencyElements(int[] nums) {
    int[] frequencies = new int[101];
    for (int n: nums)
      frequencies[n]++;
    
    int maxFrequency = 0, result = 0;
    for (int f: frequencies) {
      if (f > maxFrequency) {
        maxFrequency = f;
        result = maxFrequency;
        continue;
      }

      if (f == maxFrequency) {
        result += maxFrequency;
        continue;
      }
    }

    return result;
  }
}
```
