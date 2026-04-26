class Solution {
  public boolean validPath(int n, int[][] edges, int source, int destination) {
    Map<Integer, List<Integer>> graph = new HashMap<>();
    for (int[] edge : edges) {
      graph.computeIfAbsent(edge[0], _ -> new ArrayList<>()).add(edge[1]);
      graph.computeIfAbsent(edge[1], _ -> new ArrayList<>()).add(edge[0]);
    }
    Set<Integer> visited = new HashSet<>();

    return hasPath(graph, source, destination, visited);
  }

  private boolean hasPath(Map<Integer, List<Integer>> graph, int source, int destination, Set<Integer> visited) {
    if (source == destination)
      return true;
    if (visited.contains(source))
      return false;

    visited.add(source);

    for (int next : graph.getOrDefault(source, Collections.emptyList())) {
      if (hasPath(graph, next, destination, visited))
        return true;
    }

    return false;
  }
}
