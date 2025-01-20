# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root, results = [])
  return results if root.nil?

  inorder_traversal(root.left, results)
  results << root.val
  inorder_traversal(root.right, results)
  results
end
