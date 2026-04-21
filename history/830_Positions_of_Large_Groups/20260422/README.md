# 830. Positions of Large Groups

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
  public List<List<Integer>> largeGroupPositions(String s) {
    List<List<Integer>> results = new ArrayList<>();
    int before = 0;
    for (int i = 1; i < s.length(); i++) {
      char c = s.charAt(i);
      if (s.charAt(before) == c) continue;

      if (i - before < 3) {
        before = i;
        continue;
      }

      List<Integer> result = Arrays.asList(before, i - 1);
      results.add(result);
      before = i;
    }

    if (s.length() - before >= 3) {
      List<Integer> result = Arrays.asList(before, s.length() - 1);
      results.add(result);
    }

    return results;
  }
}
```
