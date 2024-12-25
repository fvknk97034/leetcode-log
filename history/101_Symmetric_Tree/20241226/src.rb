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
# @return {Boolean}
def is_symmetric(root)
  same_tree(root.left, root.right)
end

def same_tree(left, right)
  return true if left.nil? && right.nil?
  return false unless left&.val == right&.val

  same_tree(left.left, right.right) && same_tree(left.right, right.left)
end
