/*
// Definition for a Node.
class Node {
  public int val;
  public List<Node> children;

  public Node() {}

  public Node(int _val) {
    val = _val;
  }

  public Node(int _val, List<Node> _children) {
    val = _val;
    children = _children;
  }
};
*/

class Solution {
  public int maxDepth(Node root) {
    return leefDepth(root, 0);
  }

  private int leefDepth(Node node, int depth) {
    if (node == null)
      return depth;

    int result = depth + 1;
    for (Node n: node.children) {
      result = Math.max(result, leefDepth(n, depth + 1));
    }

    return result;
  }
}
