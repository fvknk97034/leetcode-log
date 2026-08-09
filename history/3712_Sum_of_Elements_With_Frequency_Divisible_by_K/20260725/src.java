class Solution {
  public int sumDivisibleByK(int[] nums, int k) {
    int[] freqencies = new int[101];
    for (int n: nums) {
      freqencies[n]++;
    }

    int result = 0;
    for (int n = 1; n < 101; n++) {
      if (freqencies[n] % k == 0)
        result += n * freqencies[n];
    }

    return result;
  }
}
