func canConstruct(ransomNote string, magazine string) bool {
    for _, b := range ransomNote {
        if s := string(b); strings.Count(magazine, s) < strings.Count(ransomNote, s) {
            return false
        }
    }
    return true
}
