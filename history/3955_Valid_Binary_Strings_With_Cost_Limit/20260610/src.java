class Solution {
  public List<String> generateValidStrings(int n, int k) {
    List<String> results = new ArrayList<>();
    dfs(new char[n], 0, 0, k, results);
    return results;
  }

  private void dfs(char[] buffer, int i, int cost, int k, List<String> results) {
    if (i == buffer.length) {
      results.add(new String(buffer));
      return;
    }

    if (cost + i > k) {
      for (int j = i; j < buffer.length; j++)
        buffer[j] = '0';

      results.add(new String(buffer));
      return;
    }

    buffer[i] = '0';
    dfs(buffer, i + 1, cost, k, results);

    if (i == 0 || buffer[i - 1] == '0') {
      buffer[i] = '1';
      dfs(buffer, i + 1, cost + i, k, results);
    }
  }
}
