function minimumSum(nums: number[]): number {
  let result: number | null = null

  const len: number = nums.length
  for (let i: number = 0; i < len - 2; i++) {
    for (let j: number = i + 1; j < len - 1; j++) {
      if (nums[i] >= nums[j]) continue

      for (let k: number = j + 1; k < len; k++) {
        if (nums[k] >= nums[j]) continue

        const sum = nums[i] + nums[j] + nums[k]
        if (result == null || sum < result) result = sum
      }
    }
  }

  return result || -1
}
