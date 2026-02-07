class Solution:
    def minimumDeletions(self, s: str) -> int:
        count = s[0:].count("a")
        result = count
        for c in s:
            if c == "b":
                count += 1
                continue

            count -= 1
            if count >= result:
                continue

            result = count

        return result
