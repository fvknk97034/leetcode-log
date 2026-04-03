# 1417. Reformat The String

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
  public String reformat(String s) {
    ArrayDeque<Character> digits = new ArrayDeque<>();
    ArrayDeque<Character> alphabets = new ArrayDeque<>();
    for (char c: s.toCharArray()) {
      if (Character.isDigit(c)) {
        digits.add(c);
        continue;
      }
      alphabets.add(c);
    }
    
    if (Math.abs(digits.size() - alphabets.size()) > 1) return "";
    
    StringBuilder sb = new StringBuilder();
    if (digits.size() > alphabets.size()) sb.append(digits.poll());
    
    while (digits.size() > 0) {
      sb.append(alphabets.poll());
      sb.append(digits.poll());
    }
    if (alphabets.size() > 0) sb.append(alphabets.poll());
    
    return sb.toString();
  }
}
```
