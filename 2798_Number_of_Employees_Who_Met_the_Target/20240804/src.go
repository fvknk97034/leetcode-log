func numberOfEmployeesWhoMetTarget(hours []int, target int) int {
    sort.Slice(hours, func(i, j int) bool { return hours[i] > hours[j] })
    count := 0
    for _, h := range hours {
        if h < target {
            break
        }
        count++
    }
    return count
}
