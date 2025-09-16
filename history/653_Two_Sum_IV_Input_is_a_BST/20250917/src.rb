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
# @param {Integer} k
# @return {Boolean}
def find_target(node, k, root = node)
  return false if node.nil?

  if node.val * 2 === k
    return find_target(node.left, k, root) || find_target(node.right, k, root)
  end

  num = find_num(root, k - node.val)
  return true unless num.nil?

  find_target(node.left, k, root) || find_target(node.right, k, root)
end

def find_num(node, num)
  return if node.nil?
  return node.val if node.val === num
  return find_num(node.left, num) if node.val > num

  find_num(node.right, num)
end

def max_value(node)
  return node.val if node.right.nil?

  max_value(node.right)
end
