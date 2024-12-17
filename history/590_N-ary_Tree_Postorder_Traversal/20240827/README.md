# 590. N-ary Tree Postorder Traversal

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
/**
 * Definition for node.
 * class _Node {
 *     val: number
 *     children: _Node[]
 *     constructor(val?: number) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.children = []
 *     }
 * }
 */

function postorder(root: _Node | null): number[] {
  if (root === null) return []

  let result: number[] = []
  nodeVal(root, result)
  return result
};

function nodeVal(node: _Node | null, result: number[]) {
  for (const child of node.children) nodeVal(child, result)
  result.push(node.val)
}
```
