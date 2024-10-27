# 2433. Find The Original Array of Prefix Xor

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
# @param {Integer[]} pref
# @return {Integer[]}
def find_array(pref)
  [0, *pref].each_cons(2).map { _1 ^ _2 }
end
```
