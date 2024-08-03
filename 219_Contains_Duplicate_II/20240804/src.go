func containsNearbyDuplicate(nums []int, k int) bool {
    nums_map := make(map[int]int)

    for i, n := range nums{
        if j, exist := nums_map[n]; i - j <= k && exist {
            return true
        }
        nums_map[n] = i
    }
    return false
}
