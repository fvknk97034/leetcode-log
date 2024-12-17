function minimumOperations(nums: number[]): number {
  return nums.filter(n => n % 3).length
}
