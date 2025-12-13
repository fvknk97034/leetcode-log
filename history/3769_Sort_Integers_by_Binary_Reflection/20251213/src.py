class Solution:
  def sortByReflection(self, nums: List[int]) -> List[int]:
    results = [[int(bin(n)[2:][::-1], 2), n] for n in nums]
    results.sort()

    return list(map(lambda b: b[1], results))
