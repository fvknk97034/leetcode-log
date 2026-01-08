class Solution {
  public List<Integer> stableMountains(int[] height, int threshold) {
    List<Integer> results = new ArrayList<>();
    for (int i = 1; i < height.length; i++) {
      if (height[i - 1] > threshold) results.add(i);
    }

    return results;
  }
}
