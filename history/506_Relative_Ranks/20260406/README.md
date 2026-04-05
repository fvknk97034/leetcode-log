# 506. Relative Ranks

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
  public String[] findRelativeRanks(int[] score) {
    int[] sortedScore = score.clone();
    Arrays.sort(sortedScore);

    String[] results = new String[score.length];
    for (int i = 0; i < score.length; i++) {
      int index = indexOf(sortedScore, score[i]);
      int rank = score.length - index;
      results[i] = rankString(rank);
    }

    return results;
  }

  private int indexOf(int nums[], int num) {
    for (int i = 0; i < nums.length; i++) {
      if (num == nums[i]) return i;
    }

    return -1;
  }

  private String rankString(int rank) {
    switch (rank) {
      case 1:
        return "Gold Medal";
      case 2:
        return "Silver Medal";
      case 3:
        return "Bronze Medal";
      default:
        return String.valueOf(rank);
    }
  }
}
```
