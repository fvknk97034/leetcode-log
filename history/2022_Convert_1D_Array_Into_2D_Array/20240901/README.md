# 2022. Convert 1D Array Into 2D Array

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func construct2DArray(original []int, m int, n int) [][]int {
    if len(original) != m * n {
        return [][]int{}
    }

    result := make([][]int, m)
    row := 0
    for _, v := range original {
        result[row] = append(result[row], v)
        if len(result[row]) == n {
            row++
        }
    }

    return result
}
```
