class Solution {
  public int maxBottlesDrunk(int numBottles, int numExchange) {
    int result = numBottles;
    while (numBottles >= numExchange) {
      numBottles = numBottles - numExchange + 1;
      result++;
      numExchange++;
    }

    return result;
  }
}
