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
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
  return if root.nil?

  right = root.right

  root.right = flatten(root.left)
  root.left = nil

  tmp = root
  until tmp.right.nil?
    tmp = tmp.right
  end
  tmp.right = flatten(right)

  root
end
