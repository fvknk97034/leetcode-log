# 383. Ransom Note

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->
- `ransomNote` 内の文字の登場回数が `magazine` の方が `ransomNote` より少なければ構成文字を含められていないため、`false` を返却する

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```go
func canConstruct(ransomNote string, magazine string) bool {
    for _, b := range ransomNote {
        if s := string(b); strings.Count(magazine, s) < strings.Count(ransomNote, s) {
            return false
        }
    }
    return true
}
```
