# 501. Find Mode in Binary Search Tree

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```Java
/**
* Definition for a binary tree node.
* public class TreeNode {
*     int val;
*     TreeNode left;
*     TreeNode right;
*     TreeNode() {}
*     TreeNode(int val) { this.val = val; }
*     TreeNode(int val, TreeNode left, TreeNode right) {
*         this.val = val;
*         this.left = left;
*         this.right = right;
*     }
* }
*/
class Solution {
  public int[] findMode(TreeNode root) {
    Map<Integer, Integer> counts = new HashMap<>();
    counts = countValues(root, counts);

    ArrayList<Integer> resultList = new ArrayList<>();
    int maxValue = Integer.MIN_VALUE;
    for (Map.Entry<Integer, Integer> count : counts.entrySet()) {
      if (count.getValue() < maxValue) continue;

      if (count.getValue() > maxValue) {
        resultList.clear();
        maxValue = count.getValue();
      }
      resultList.add(count.getKey());
    }

    int[] results = new int[resultList.size()];
    for (int i = 0; i < resultList.size(); i++) {
      results[i] = resultList.get(i);
    }

    return results;
  }

  private Map<Integer, Integer> countValues(TreeNode node, Map<Integer, Integer> counts) {
    if (node == null) return counts;
    
    counts.putIfAbsent(node.val, 0);
    counts.put(node.val, counts.get(node.val) + 1);

    counts = countValues(node.left, counts);
    counts = countValues(node.right, counts);

    return counts;
  }
}
```
