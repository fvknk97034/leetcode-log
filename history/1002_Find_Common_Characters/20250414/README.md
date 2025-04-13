# 1002. Find Common Characters

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
# @param {String[]} words
# @return {String[]}
def common_chars(words)
  sought_chars = words[0].chars
  sought_chars.filter do |c|
    words[1..].each.with_index(1).all? do |w, i|
      delete_index = w.index(c)
      next false if delete_index.nil?

      words[i] = w[...delete_index] + w[(delete_index + 1)..]
      true
    end
  end
end
```
