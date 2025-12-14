# 3606. Coupon Code Validator

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Python
class Solution:
    def validateCoupons(self, code: List[str], businessLine: List[str], isActive: List[bool]) -> List[str]:
      validLines = ["electronics", "grocery", "pharmacy", "restaurant"]
      validCodeChars = r"^[a-zA-Z0-9_]+$"
      results = []

      for i in range(len(code)):
          if not isActive[i]:
              continue
          
          if not businessLine[i] in validLines:
              continue

          if not re.fullmatch(validCodeChars, code[i]):
              continue

          results.append([validLines.index(businessLine[i]), code[i]])

      results.sort()

      return list(map(lambda r: r[1], results))
```
