class Solution {
  public int countCompleteComponents(int n, int[][] edges) {
    List<List<Integer>> connectedNodeMap = getConnectedNodeMap(n, edges);

    int result = 0;
    boolean[] visitedNodes = new boolean[n];
    for (int node = 0; node < n; node++) {
      if (visitedNodes[node])
        continue;

      int edgeCount = 0;
      int componentSize = 0;

      Queue<Integer> queue = new ArrayDeque<>();
      queue.add(node);
      visitedNodes[node] = true;

      while (!queue.isEmpty()) {
        int current = queue.poll();
        componentSize++;

        List<Integer> neighbors = connectedNodeMap.get(current);
        edgeCount += neighbors.size();
        for (int neighbor : neighbors) {
          if (visitedNodes[neighbor])
            continue;

          visitedNodes[neighbor] = true;
          queue.add(neighbor);
        }
      }

      if (edgeCount == componentSize * (componentSize - 1))
        result++;
    }

    return result;
  }

  private List<List<Integer>> getConnectedNodeMap(int n, int[][] edges) {
    List<List<Integer>> results = new ArrayList<>();
    for (int node = 0; node < n; node++)
      results.add(new ArrayList<Integer>());

    for (int[] edge: edges) {
      results.get(edge[0]).add(edge[1]);
      results.get(edge[1]).add(edge[0]);
    }

    return results;
  }
}
