class Solution {
  public int minLengthAfterRemovals(String s) {
    int[] counts = new int[2];
    for (int i = 0; i < s.length(); i++)
      counts[s.charAt(i) - 'a']++;

    return Math.abs(counts[0] - counts[1]);
  }
}
