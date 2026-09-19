/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode() {}
 *     TreeNode(int val) { this.val = val; }
 *     TreeNode(int val, TreeNode left, TreeNode right) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
class Solution {
  public int sumEvenGrandparent(TreeNode root) {
    return dfs(root, null, null);
  }

  private int dfs(TreeNode node, TreeNode parent, TreeNode grandParent) {
    if (node == null)
      return 0;

    int result = 0;
    if (grandParent != null && grandParent.val % 2 == 0)
      result += node.val;

    return result + dfs(node.left, node, parent) + dfs(node.right, node, parent);
  }
}
