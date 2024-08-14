function getLucky(s: string, k: number): number {
  // convert
  const aCharCode = 'a'.charCodeAt(0)
  let beforeString = s
    .split('')
    .map((v) => String(v.charCodeAt(0) - aCharCode + 1))
    .join('')

  // transform
  let result = 0
  for (let i = 0; i < k; i++) {
    result = 0
    for (let ts of beforeString) {
      result += Number(ts)
    }
    beforeString = String(result)
  }
  return result
};
