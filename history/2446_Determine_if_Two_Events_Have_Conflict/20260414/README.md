# 2446. Determine if Two Events Have Conflict

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
  public boolean haveConflict(String[] event1, String[] event2) {
    return event1[0].compareTo(event2[0]) > 0 ? event1[0].compareTo(event2[1]) <= 0 : event2[0].compareTo(event1[1]) <= 0;
  }
}
```
