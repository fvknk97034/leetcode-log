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
# @return {Integer}
def deepest_leaves_sum(root)
  level_nodes = Hash.new{ |hash, key| hash[key] = [] }
  deepest_nodes(root, level_nodes, 0).max[1].sum
end

def deepest_nodes(node, level_nodes, level)
  level_nodes[level] << node.val if !node.nil? && node.left.nil? && node.right.nil?

  deepest_nodes(node.left, level_nodes, level + 1) if !node.nil? && !node.left.nil?
  deepest_nodes(node.right, level_nodes, level + 1) if !node.nil? && !node.right.nil?

  level_nodes
end
