# 3921. Score Validator

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
  public int[] scoreValidator(String[] events) {
    int[] results = {0, 0};
    for (String e: events) {
      switch(e) {
        case "W":
          results[1]++;
          break;
        case "WD":
        case "NB":
          results[0]++;
          break;
        default:
          results[0] += Integer.parseInt(e);
      }

      if (results[1] == 10)
        break;
    }

    return results;
  }
}
```
