# 559. Maximum Depth of N-ary Tree

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
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
```
