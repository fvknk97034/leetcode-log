/**
 * @param {number[]} arr
 * @param {Function} fn
 * @return {number[]}
 */
var map = function(arr, fn) {
  const result = []
  arr.forEach((a, i) => result.push(fn(a, i)))
  return result
};
