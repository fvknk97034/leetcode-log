# 2525. Categorize Box According to Criteria

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
# @param {Integer} length
# @param {Integer} width
# @param {Integer} height
# @param {Integer} mass
# @return {String}
def categorize_box(length, width, height, mass)
  is_bulky = length >= 10000 || width >= 10000 || height >= 10000 || length * width * height >= 1000000000
  is_heavy = mass >= 100

  return 'Both' if is_bulky && is_heavy
  return 'Bulky' if is_bulky
  return 'Heavy' if is_heavy

  'Neither'
end
```
