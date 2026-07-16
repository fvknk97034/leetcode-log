/**
 * Definition for a binary tree root.
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
  public TreeNode increasingBST(TreeNode root) {
    if (root == null)
      return null;

    TreeNode leftHead = increasingBST(root.left);
    TreeNode rightHead = increasingBST(root.right);

    root.right = rightHead;
    root.left = null;
    if (leftHead == null)
      return root;

    TreeNode leftTail = leftHead;
    while (leftTail.right != null)
      leftTail = leftTail.right;

    leftTail.right = root;

    return leftHead;
  }
}
