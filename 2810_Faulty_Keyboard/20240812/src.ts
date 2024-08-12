function finalString(s: string): string {
  let result: string = ''
  for (const c of s) {
    if (c === 'i') {
      result = reverseString(result)
    } else {
      result += c
    }
  }
  return result
};

function reverseString (s: string): string {
  let result: string = ''
  for (let i = -1; i >= -s.length; i--) {
    result += s.at(i)
  }
  return result
}
