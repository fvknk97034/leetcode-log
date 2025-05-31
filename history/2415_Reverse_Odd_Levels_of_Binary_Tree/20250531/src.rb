# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def reverse_odd_levels(root)
  seek_node([root.left], [root.right], 1)

  root
end

def seek_node(lefts, rights, level = 0)
  return if lefts[0].nil?

  if level.odd?
    (0...lefts.length).each do |i|
      lefts[i].val, rights[-(i + 1)].val = [rights[-(i + 1)].val, lefts[i].val]
    end
  end
  left_nodes = lefts.flat_map { |n| [n.left, n.right] }
  right_nodes = rights.flat_map { |n| [n.left, n.right] }

  seek_node(left_nodes, right_nodes, level + 1)
end
