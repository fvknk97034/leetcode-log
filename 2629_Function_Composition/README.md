# 2629. Function Composition

## Intuition

- 配列に関数が格納されているので1つずつ末尾から取り出す
- composeには再帰で使用した関数以外を渡す

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity
- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```javascript
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
```
