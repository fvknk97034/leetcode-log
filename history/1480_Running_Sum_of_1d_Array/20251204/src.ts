function runningSum(nums: number[]): number[] {
  let sum: number = 0
  return nums.map(n => sum += n)
}
