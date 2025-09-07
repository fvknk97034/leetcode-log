# 1089. Duplicate Zeros

## Intuition

## Approach
<!-- Describe your approach to solving the problem. -->

## Complexity

- Time complexity:
<!-- Add your time complexity here, e.g. $$O(n)$$ -->

- Space complexity:
<!-- Add your space complexity here, e.g. $$O(n)$$ -->

## Code

```ruby
# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  i = 0
  len = arr.length
  until i >= len
    next i += 1 unless arr[i] === 0
    
    arr[i, 0] = [0]
    arr.pop

    i += 2
  end
end
```
