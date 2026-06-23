class Solution {
  public int minimumChairs(String s) {
    int result = 0;
    int count = 0;
    for (char c: s.toCharArray()) {
      count += c == 'E' ? 1 : -1;
      result = Math.max(result, count);
    }

    return result;
  }
}
