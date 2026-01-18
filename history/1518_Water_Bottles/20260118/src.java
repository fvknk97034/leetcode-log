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
