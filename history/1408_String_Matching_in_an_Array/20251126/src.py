class Solution:
    def stringMatching(self, words: List[str]) -> List[str]:
        results = []
        for word1 in words:
            for word2 in words:
                if word1 == word2:
                    continue

                if word1 in word2:
                    results.append(word1)
                    break

        return results
