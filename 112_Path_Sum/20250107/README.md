# 112. Path Sum

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
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(node, target_sum)
  return false if node.nil?

  return node.val === target_sum if node.left.nil? && node.right.nil?

  node.left.val += node.val unless node.left.nil?
  node.right.val += node.val unless node.right.nil?

  has_path_sum(node.left, target_sum) || has_path_sum(node.right, target_sum)
end
```
