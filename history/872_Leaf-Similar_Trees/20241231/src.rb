# Definition for a binary tree node.
# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val = 0, left = nil, right = nil)
#     @val = val
#     @left = left
#     @right = right
#   end
# end
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  fetch_leaf_vals(root1) == fetch_leaf_vals(root2)
end

def fetch_leaf_vals(node, vals = [])
  return vals if node.nil?

  vals << node.val if node.left.nil? && node.right.nil?

  fetch_leaf_vals(node.left, vals)
  fetch_leaf_vals(node.right, vals)
end
