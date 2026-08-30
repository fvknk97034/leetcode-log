class Solution {
  public List<Integer> findMissingElements(int[] nums) {
    int min = Integer.MAX_VALUE;
    int max = Integer.MIN_VALUE;
    for (int n: nums) {
      min = Math.min(n, min);
      max = Math.max(n, max);
    }

    List<Integer> results = new ArrayList<>();
    for (int target = min + 1; target < max; target++) {
      boolean found = false;
      for (int n: nums) {
        if (n != target)
          continue;

        found = true;
        break;
      }

      if (!found)
        results.add(target);
    }

    return results;
  }
}
