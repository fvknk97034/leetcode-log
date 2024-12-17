# 104. Maximum Depth of Binary Tree

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
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
def max_depth(root)
  leaf_node_depth(root, 0)
end

def leaf_node_depth(node, depth)
  depth += 1 unless node.nil?
  return depth if node&.left.nil? && node&.right.nil?
  
  [leaf_node_depth(node.left, depth), leaf_node_depth(node.right, depth)].max
end
```
