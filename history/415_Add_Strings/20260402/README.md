# 415. Add Strings

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
  public String addStrings(String num1, String num2) {
    String larger = num1, smaller = num2;
    if (num2.length() > num1.length()) {
      larger = num2;
      smaller = num1;
    }
    
    StringBuilder sb = new StringBuilder(larger);
    sb = addDigits(sb, smaller, 0, 0);
    return sb.toString();
  }

  public StringBuilder addDigits(StringBuilder n1, String n2, int digit, int carry) {
    if (digit > n1.length() - 1) {
      return carry == 0 ? n1 : n1.insert(0, '1');
    } 

    int n1Digit = digit < n1.length() ? n1.charAt(n1.length() - 1 - digit) - '0' : 0;
    int n2Digit = digit < n2.length() ? n2.charAt(n2.length() - 1 - digit) - '0' : 0;
    int sum = n1Digit + n2Digit + carry;

    n1.setCharAt(n1.length() - 1 - digit, (char)(sum % 10 + '0'));
    return addDigits(n1, n2, digit + 1, sum >= 10 ? 1 : 0);
  }
}
```
