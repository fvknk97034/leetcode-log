class Solution {
  public int getLeastFrequentDigit(int n) {
    Map<Integer, Integer> map = new HashMap<>();
    while (n != 0) {
      int digit = n % 10;
      map.put(digit, map.getOrDefault(digit, 0) + 1);

      n /= 10;
    }

    int min = Integer.MAX_VALUE;
    int result = -1;
    for (Map.Entry<Integer, Integer> e : map.entrySet()) {
      int v = e.getValue();
      if (v >= min)
        continue;

      min = v;
      result = e.getKey();
    }

    return result;
  }
}
