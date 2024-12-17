function countSymmetricIntegers(low: number, high: number): number {
  let count = 0
  for (let n = low; n <= high; n++) {
    const a = String(n).split('').map(v => Number(v))

    if (a.length % 2 === 1) continue

    const halfDigits = Math.floor(a.length / 2)
    const n1 = a.slice(0, halfDigits)
    const n2 = a.slice(-halfDigits)

    if (n1.reduce((sum, element) => sum + element, 0) === n2.reduce((sum, element) => sum + element, 0)) {
      count++
    }
  }
  return count
};
