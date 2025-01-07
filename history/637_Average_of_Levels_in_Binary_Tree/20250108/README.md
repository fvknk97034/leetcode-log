# 637. Average of Levels in Binary Tree

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
# @return {Float[]}
def average_of_levels(root)
  level_vals = fetch_level_val(root, 0)
  level_vals.map { |v| v.sum.to_f / v.length  }
end

def fetch_level_val(node, level, results = [])
  return results if node.nil?

  results[level] = [] if results[level].nil?
  results[level] << node.val

  fetch_level_val(node.left, level + 1, results)
  fetch_level_val(node.right, level + 1, results)
end
```
