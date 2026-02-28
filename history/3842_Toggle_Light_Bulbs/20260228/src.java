class Solution {
  public List<Integer> toggleLightBulbs(List<Integer> bulbs) {
    Set<Integer> toggleSet = new HashSet<>();
    for (int b: bulbs) {
      if (!toggleSet.add(b)) toggleSet.remove(b);
    }
    List<Integer> results = new ArrayList<>(toggleSet);
    Collections.sort(results);

    return results;
  }
}
