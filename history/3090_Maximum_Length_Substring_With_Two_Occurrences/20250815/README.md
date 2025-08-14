# 3090. Maximum Length Substring With Two Occurrences

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
# @return {Integer}
def maximum_length_substring(s)
  chars = s.chars
  return 2 if chars.uniq.length === 1

  len = s.length
  return len if chars.tally.values.max === 1

  window_len = len
  while window_len >= 2
    window_max_count = window_len
    (0..len - window_len).each do |i|
      window = chars[i, window_len]
      max = window.tally.values.max
      return window_len if max === 2

      window_max_count = [max, window_max_count].min
    end
    window_len -= window_max_count - 2
  end
  len
end
```
