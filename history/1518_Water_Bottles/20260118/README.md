# 1518. Water Bottles

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
  public int numWaterBottles(int numBottles, int numExchange) {
    int drinkableBottle = numBottles;
    int result = 0;
    while (drinkableBottle > 0) {
      result += drinkableBottle;
      drinkableBottle = numBottles / numExchange;
      numBottles = drinkableBottle + numBottles % numExchange;
    }
    return result;
  }
}
```
