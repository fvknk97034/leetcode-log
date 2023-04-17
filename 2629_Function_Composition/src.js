/**
 * @param {Function[]} functions
 * @return {Function}
 */
var compose = function(functions) {
	return function(x) {
    if(functions.length == 0) return x

    const func = functions.pop()
    if(functions.length == 0) return func(x)

    const fn = compose(functions)
    return fn(func(x))
  }
};

/**
 * const fn = compose([x => x + 1, x => 2 * x])
 * fn(4) // 9
 */
