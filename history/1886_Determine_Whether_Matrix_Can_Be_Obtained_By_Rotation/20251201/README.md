# 1886. Determine Whether Matrix Can Be Obtained By Rotation

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```TypeScript
function findRotation(mat: number[][], target: number[][], count: number = 0): boolean {
  if (mat.every((row, i) => row.every((cell, j) => cell === target[i][j])))
    return true 
  
  if (count === 3)
    return false

  const transposedMat: number[][] = mat[0].map((_, i) => mat.map(row => row[i])).reverse()
  return findRotation(transposedMat, target, count + 1)
}
```
