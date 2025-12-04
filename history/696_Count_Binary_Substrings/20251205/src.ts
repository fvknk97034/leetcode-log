function countBinarySubstrings(s: string): number {
  let result: number = 0

  let prevCount: number = s.indexOf(s[0] == "0" ? "1" : "0")
  let subCount: number = 1

  for (let i: number = prevCount + 1; i < s.length; i++) {
    if (s[i - 1] === s[i]) {
      subCount++
      continue
    }

    result += Math.min(prevCount, subCount)
    prevCount = subCount
    subCount = 1
  }

  return result + Math.min(prevCount, subCount)
}
