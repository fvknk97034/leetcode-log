# 3842. Toggle Light Bulbs

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
  public List<Integer> toggleLightBulbs(List<Integer> bulbs) {
    Set<Integer> toggleSet = new HashSet<>();
    for (int b: bulbs) {
      if (!toggleSet.add(b)) toggleSet.remove(b);
    }
    List<Integer> results = new ArrayList<>(toggleSet);
    Collections.sort(results);

    return results;
  }
}
```
