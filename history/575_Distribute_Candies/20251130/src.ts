function distributeCandies(candyType: number[]): number {
  const sum: number = candyType.length / 2
  const candySet: Set<number> = new Set(candyType)

  return sum < candySet.size ? sum : candySet.size
}
