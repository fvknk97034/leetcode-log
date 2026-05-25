class Solution {
  public int maxFrequencyElements(int[] nums) {
    int[] frequencies = new int[101];
    for (int n: nums)
      frequencies[n]++;

    int maxFrequency = 0, result = 0;
    for (int f: frequencies) {
      if (f > maxFrequency) {
        maxFrequency = f;
        result = maxFrequency;
        continue;
      }

      if (f == maxFrequency) {
        result += maxFrequency;
        continue;
      }
    }

    return result;
  }
}
