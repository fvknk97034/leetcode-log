# 1299. Replace Elements with Greatest Element on Right Side

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
# @return {Integer[]}
def replace_elements(arr)
  results = []
  max = arr[1..].max || -1
  arr.each_with_index do |n, i|
    max = arr[i + 1..].max || -1 if max === n
    results << max
  end
  results
end
```
