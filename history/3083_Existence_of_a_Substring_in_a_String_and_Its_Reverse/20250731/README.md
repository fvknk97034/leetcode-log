# 3083. Existence of a Substring in a String and Its Reverse

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
# @param {String} s
# @return {Boolean}
def is_substring_present(s)
  reversed_s = s.reverse
  (0...s.length - 1).any? { |i| reversed_s.include?(s[i, 2]) }
end
```
