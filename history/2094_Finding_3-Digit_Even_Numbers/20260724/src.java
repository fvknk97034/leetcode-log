class Solution {
  public int[] findEvenNumbers(int[] digits) {
    int[] digitCounts = new int[10];
    for (int d: digits)
      digitCounts[d]++;

    List<Integer> nums = new ArrayList<>();
    for (int n = 100; n < 1000; n += 2) {
      int[] usedNums = new int[10];
      int num = n;
      boolean isValid = true;
      while (num != 0) {
        if (digitCounts[num % 10] == 0) {
          isValid = false;
          break;
        }

        digitCounts[num % 10]--;
        usedNums[num % 10]++;
        num /= 10;
      }

      for (int i = 0; i < 10; i++)
        digitCounts[i] += usedNums[i];

      if (isValid)
        nums.add(n);
    }

    int[] results = new int[nums.size()];
    int i = 0;
    for (int num: nums)
      results[i++] = num;

    return results;
  }
}
