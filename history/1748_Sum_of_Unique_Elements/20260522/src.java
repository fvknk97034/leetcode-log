class Solution {
  public int sumOfUnique(int[] nums) {
    int[] numCounts = new int[101];
    for (int n: nums) {
      numCounts[n]++;
    }

    int result = 0;
    for (int i = 1; i < 101; i++) {
      if (numCounts[i] == 1)
        result += i;
    }

    return result;
  }
}
