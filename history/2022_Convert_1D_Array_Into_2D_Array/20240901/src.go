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
