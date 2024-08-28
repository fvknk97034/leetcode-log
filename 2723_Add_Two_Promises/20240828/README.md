# 2723. Add Two Promises

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ts
type P = Promise<number>

async function addTwoPromises(promise1: P, promise2: P): P {
    const [value1, value2] = await Promise.all([promise1, promise2])
    return value1 + value2
};

/**
 * addTwoPromises(Promise.resolve(2), Promise.resolve(2))
 *   .then(console.log); // 4
 */
```
