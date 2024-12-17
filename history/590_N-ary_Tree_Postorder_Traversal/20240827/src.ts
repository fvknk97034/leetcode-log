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
