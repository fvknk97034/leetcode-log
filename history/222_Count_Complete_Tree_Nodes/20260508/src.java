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
  public int countNodes(TreeNode root) {
    if (root == null)
      return 0;

    int leftHeight = getLeftHeight(root);
    int rightHeight = getRightHeight(root);

    if (leftHeight == rightHeight) {
      return (int)Math.pow(2, leftHeight) - 1;
    }

    return 1 + countNodes(root.left) + countNodes(root.right);
  }

  private int getLeftHeight(TreeNode node) {
    int result = 0;
    while (node != null) {
      node = node.left;
      result++;
    }

    return result;
  }

  private int getRightHeight(TreeNode node) {
    int result = 0;
    while (node != null) {
      node = node.right;
      result++;
    }

    return result;
  }
}
