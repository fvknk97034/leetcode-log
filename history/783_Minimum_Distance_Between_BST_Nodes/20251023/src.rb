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
# @return {Integer}
def min_diff_in_bst(root)
  values = node_values(root)

  diff_mins = values.sort.each_cons(2).min_by { |a, b| b - a }
  diff_mins[1] - diff_mins[0]
end

def node_values(node)
  return Set[] if node.nil?

  values = Set[node.val]
  values.merge(node_values(node.left))
  values.merge(node_values(node.right))

  values
end
