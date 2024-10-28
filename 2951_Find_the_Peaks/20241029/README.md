# 2951. Find the Peaks

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
# @param {Integer[]} mountain
# @return {Integer[]}
def find_peaks(mountain)
  results = []
  (1...(mountain.length - 1)).each do |i|
    results << i if mountain[i - 1] < mountain[i] && mountain[i] > mountain[i + 1]
  end
  results
end
```
