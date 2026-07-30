class Solution {
  public List<List<Integer>> mergeSimilarItems(int[][] items1, int[][] items2) {
    Map<Integer, Integer> items = new TreeMap<>();
    for (int[] item: items1)
      items.put(item[0], item[1]);

    for (int[] item: items2)
      items.merge(item[0], item[1], Integer::sum);

    List<List<Integer>> results = new ArrayList<>();
    for (Map.Entry<Integer, Integer> e: items.entrySet())
      results.add(Arrays.asList(e.getKey(), e.getValue()));

    return results;
  }
}
