class Solution {
  public int maxDepth(String s) {
    int depth = 0;
    int result = depth;
    for (char c: s.toCharArray()) {
      if (c == '(') {
        depth++;
        result = Math.max(depth, result);
        continue;
      }

      if (c == ')')
        depth--;
    }

    return result;
  }
}
