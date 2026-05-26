# 1625. Lexicographically Smallest String After Applying Operations

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
  public String findLexSmallestString(String s, int a, int b) {
    String result = s;

    Queue<String> preDigits = new ArrayDeque<>();
    preDigits.add(s);
    Set<String> processedDigits = new HashSet<>();
    processedDigits.add(s);
    while (!preDigits.isEmpty()) {
      String target = preDigits.poll();
      if (target.compareTo(result) < 0)
        result = target;

      String addedDigits = add(target, a);
      if (processedDigits.add(addedDigits))
        preDigits.add(addedDigits);

      String rotatedDigits = rotate(target, b);
      if (processedDigits.add(rotatedDigits))
        preDigits.add(rotatedDigits);
    }

    return result;
  }

  private String add(String s, int a) {
    char[] digits = s.toCharArray();
    for (int i = 1; i < digits.length; i += 2) {
      digits[i] = (char)((digits[i] - '0' + a) % 10 + '0');
    }

    return new String(digits);
  }

  private String rotate(String s, int b) {
    int n = s.length();
    return s.substring(n - b) + s.substring(0, n - b);
  }
}
```
